#ifndef GLASS_BRIDGE_H
#define GLASS_BRIDGE_H
#include <iostream>
#include "ros/ros.h"
#include "glass_bridge/glass_service.h"
#include "std_msgs/String.h"

const int SYM_NUM = 2;
const char symbols[SYM_NUM] = {'l', 'r'};
const int STR_LEN = 18;

class GlassBridge
{
private:
    std::string bridge_;
    int counter_;
    ros::ServiceServer service_;
    ros::Publisher pub_;
    ros::Subscriber sub_;
    ros::NodeHandle nh_;

    bool createResponse(glass_bridge::glass_service::Request& req, glass_bridge::glass_service::Response& res);
    void randString();
    void topicSend();
    void result(const std_msgs::String& msg);
    friend std::ostream& operator<<(std::ostream& os, GlassBridge& obj);
public:
    GlassBridge();
};
#endif //GLASS_BRIDGE_H
