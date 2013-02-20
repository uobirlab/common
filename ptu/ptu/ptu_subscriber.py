#!/usr/bin/env python
import roslib; roslib.load_manifest('ptu')
import rospy
import my_msgs.msg
import ptu_control.msg
import actionlib
import sys

def ptu_subs():
	rospy.Subscriber("Ptu_Instruction", my_msgs.msg.PtuInstruction, callback)
	rospy.spin()

def callback(data):
	rospy.loginfo("I Heard pan: %s", data.pan)
	rospy.loginfo("I Heard tilt %s", data.tilt)
	rospy.loginfo("----------------------")
	client = actionlib.SimpleActionClient('SetPTUState', ptu_control.msg.PtuGotoAction)
	client.wait_for_server()
	goal = ptu_control.msg.PtuGotoGoal(pan=data.pan, tilt=data.tilt)
	client.send_goal(goal)
	client.wait_for_result()
	return client.get_result()
	
if __name__ == '__main__':
	rospy.init_node('ptu_instruction_subscriber')
	ptu_subs()
