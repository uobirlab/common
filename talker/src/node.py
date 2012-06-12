#!/usr/bin/env python
import roslib; roslib.load_manifest('talker')

from talker.srv import *
import rospy
import os
import subprocess

def handle_request(req):
    rospy.logdebug("Speach: %s"%req.text.data)
    print req.text.data
    cmd=["festival","--tts"]
    process = subprocess.Popen(cmd, stdin=subprocess.PIPE, stderr=subprocess.PIPE)
    process.communicate(req.text.data)
    
    return SpeachResponse()

def speach_server():
    rospy.init_node('talker_node')
    s = rospy.Service('/say', Speach, handle_request)
    rospy.loginfo("Speach node active.")
    rospy.spin()

if __name__ == "__main__":
    speach_server()
