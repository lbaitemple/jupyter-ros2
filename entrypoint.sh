#!/bin/bash
source ${ROS_PATH}/setup.bash
source /opt/ros_demos/setup.bash
alias dance='ros2 launch mini_pupper_dance enhanced_dance.launch.py  hardware_connected:=false'
alias sendcmd='ros2 topic pub --once /dance_config std_msgs/String "data: 'my_dance'"'
exec "$@"
