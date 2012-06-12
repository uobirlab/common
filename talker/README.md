*talker* package
================

This package provides a single node called "node.py" that provides a service on the topic named '/say'. The service is of type talker/Speach. It simply takes a std_msgs/String named "text" as a request, puts it through festival, and returns nothing.

Before running this node, it needs to be built as it uses custom messages:

    roscd talker
    make

The machine that this node is run on will need festival installed. The tortoise already has this, otehr Ubuntu systems can easily be set up with:
  
    sudo apt-get install festival

To launch this node:
  
    rosrun talker node.py
    [INFO] [WallTime: 1339513834.811996] Speach node active.

To test that it is active:
  
    rosservice call /say ["hello"]




