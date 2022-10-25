#include <random>
#include "glass_bridge.h"

GlassBridge::GlassBridge() : counter_(0)
{
  randString();
  service_ = nh_.advertiseService("glass_bridge_server", &GlassBridge::createResponse, this);
  pub_ = nh_.advertise<std_msgs::String>("chatter", 10);
  sub_ = nh_.subscribe("chatter", 10, &GlassBridge::result, this);
}

void GlassBridge::randString()
{
  std::random_device rd;
  std::mt19937 mt(rd());
  std::uniform_int_distribution<int> dist(0, SYM_NUM - 1);
  for (int i = 0; i < STR_LEN; ++i)
  {
    bridge_ += symbols[dist(mt)];
  }
}

bool GlassBridge::createResponse(glass_bridge::glass_service::Request& req, glass_bridge::glass_service::Response& res)
{
  if (req.symbol != 'l' && req.symbol != 'r')
  {
    return false;
  } else if (req.symbol == bridge_[counter_])
  {
    res.str = "move next";
    ROS_INFO_STREAM("request: " << req.symbol);
    ROS_INFO_STREAM("response: " << res.str);
    topicSend();
    counter_++;
    return true;
  } else
  {
    res.str = "dead";
    ROS_INFO_STREAM("response: " << res.str);
    ros::shutdown();
  }
}

void GlassBridge::topicSend()
{
  std_msgs::String msg;
  msg.data = bridge_[counter_];
  pub_.publish(msg);
  ros::spinOnce();
}

void GlassBridge::result(const std_msgs::String& msg)
{
  static std::string result_str;
  result_str += msg.data;
  if (result_str == bridge_)
  {
    ROS_INFO_STREAM("Congratulations, you won!\n");
    ros::shutdown();
  } else
  {
    ROS_INFO_STREAM(result_str);
  }
}

std::ostream &operator<<(std::ostream &os, GlassBridge &obj) 
{
  std::cout << obj.bridge_ << std::endl;
  return os;
}
