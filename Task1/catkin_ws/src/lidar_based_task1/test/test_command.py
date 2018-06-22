#!/usr/bin/env python
import rospy
import rostest
import unittest

from drive_command import drive_command_node
from lidar_based_task1.msg import ObstaclePose
from lidar_based_task1.msg import ObstaclePoseList
from lidar_based_task1.msg import UsvDrive


class CommandTesterNode(unittest.TestCase):

  def __init__(self, *args):
    super(CommandTesterNode, self).__init__(*args)
    #msg_received = False


  def setup(self):
    # Setup the node
    rospy.init_node('test_command', anonymous=False)

    dc = drive_command_node()
    # Setup the publisher and subscriber
    #self.sub_list = rospy.Subscriber("/obstacle_list", ObstaclePoseList, dc.obstacle_cb)
    self.pub_list = rospy.Publisher("/obstacle_list", ObstaclePoseList)
    self.msg_drive = dc.drive

    # Wait for the node to finish starting up
    timeout = rospy.Time.now() + rospy.Duration(5) # Wait at most 5 seconds for the node to come up
    while not rospy.is_shutdown() and rospy.Time.now() < timeout:
        rospy.sleep(0.1)


  def test_publisher_and_subscriber(self):
    self.setup()    # Setup the node
    self.assertGreaterEqual(self.pub_list.get_num_connections(), 1, "No connections found on list topic")
    #self.assertGreaterEqual(self.sub_list.get_num_connections(), 1, "No connections found on number_of_quacks topic")


  def test_command_output(self):
    self.setup()

    # Send a message to the list topic
    msg_list = ObstaclePoseList()
    msg1, msg2, msg3, msg4 = ObstaclePose(),ObstaclePose(),ObstaclePose(),ObstaclePose()
    msg_list.size = 4

    msg1.x = 5
    msg1.y = 5
    msg1.z = 1
    msg1.r = 1
    msg_list.list.append(msg1)

    msg2.x = -5
    msg2.y = 5
    msg2.z = 1
    msg2.r = 1
    msg_list.list.append(msg2)

    msg3.x = 5
    msg3.y = 35
    msg3.z = 1
    msg3.r = 1
    msg_list.list.append(msg3)

    msg4.x = -5
    msg4.y = 35
    msg4.z = -1
    msg4.r = 1
    msg_list.list.append(msg4)

    self.pub_list.publish(msg_list)

    # Wait for the message to be received
    timeout = rospy.Time.now() + rospy.Duration(5) # Wait at most 5 seconds for the node to reply
    while not rospy.is_shutdown() and rospy.Time.now() < timeout:
        rospy.sleep(0.1)

    right = self.msg_drive.right
    left = self.msg_drive.left
    #self.assertEqual(msg_list.list[1].y, 5)
    self.assertEqual(right, 0.4, "right speed is equal")
    self.assertEqual(left, 0.4, "left speed is equal")

    # Send an error if the timeout was hit
    #self.assertLess(rospy.Time.now(), timeout, "The test timed out with no response from the drive_command")



if __name__ == '__main__':
    rostest.rosrun('test', 'test_command', CommandTesterNode)