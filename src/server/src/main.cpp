#include "glass_bridge.h"

int main(int argc, char **argv)
{
  ros::init(argc, argv, "glass_bridge_server");
  ros::init(argc, argv, "publisher");
  ros::init(argc, argv, "subscriber");
  GlassBridge first;
  //std::cout << first; //to observe initial string
  //comments
  //comm
  //comm
  ros::spin();
  return 0;
}
