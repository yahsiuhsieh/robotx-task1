// Auto-generated. Do not edit!

// (in-package lidar_based_task1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObstaclePose = require('./ObstaclePose.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObstaclePoseList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.list = null;
      this.size = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('list')) {
        this.list = initObj.list
      }
      else {
        this.list = [];
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstaclePoseList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [list]
    // Serialize the length for message field [list]
    bufferOffset = _serializer.uint32(obj.list.length, buffer, bufferOffset);
    obj.list.forEach((val) => {
      bufferOffset = ObstaclePose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [size]
    bufferOffset = _serializer.uint32(obj.size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstaclePoseList
    let len;
    let data = new ObstaclePoseList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [list]
    // Deserialize array length for message field [list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.list[i] = ObstaclePose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [size]
    data.size = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.list.forEach((val) => {
      length += ObstaclePose.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lidar_based_task1/ObstaclePoseList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03a580738d2edadd2ccd0ff18ab5984c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    lidar_based_task1/ObstaclePose[] list
    uint32 size
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: lidar_based_task1/ObstaclePose
    Header header
    float64 x
    float64 y
    float64 z
    float64 r
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstaclePoseList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.list !== undefined) {
      resolved.list = new Array(msg.list.length);
      for (let i = 0; i < resolved.list.length; ++i) {
        resolved.list[i] = ObstaclePose.Resolve(msg.list[i]);
      }
    }
    else {
      resolved.list = []
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    return resolved;
    }
};

module.exports = ObstaclePoseList;
