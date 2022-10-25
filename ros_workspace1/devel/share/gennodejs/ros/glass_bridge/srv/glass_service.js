// Auto-generated. Do not edit!

// (in-package glass_bridge.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class glass_serviceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.symbol = null;
    }
    else {
      if (initObj.hasOwnProperty('symbol')) {
        this.symbol = initObj.symbol
      }
      else {
        this.symbol = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type glass_serviceRequest
    // Serialize message field [symbol]
    bufferOffset = _serializer.char(obj.symbol, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type glass_serviceRequest
    let len;
    let data = new glass_serviceRequest(null);
    // Deserialize message field [symbol]
    data.symbol = _deserializer.char(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'glass_bridge/glass_serviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f8308ac47737d4a6d355ad40cb02765';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    char symbol
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new glass_serviceRequest(null);
    if (msg.symbol !== undefined) {
      resolved.symbol = msg.symbol;
    }
    else {
      resolved.symbol = 0
    }

    return resolved;
    }
};

class glass_serviceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.str = null;
    }
    else {
      if (initObj.hasOwnProperty('str')) {
        this.str = initObj.str
      }
      else {
        this.str = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type glass_serviceResponse
    // Serialize message field [str]
    bufferOffset = _serializer.string(obj.str, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type glass_serviceResponse
    let len;
    let data = new glass_serviceResponse(null);
    // Deserialize message field [str]
    data.str = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.str);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'glass_bridge/glass_serviceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '994972b6e03928b2476860ce6c4c8e17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string str
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new glass_serviceResponse(null);
    if (msg.str !== undefined) {
      resolved.str = msg.str;
    }
    else {
      resolved.str = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: glass_serviceRequest,
  Response: glass_serviceResponse,
  md5sum() { return 'cb66fc01ceb7c6ac62872c559febe866'; },
  datatype() { return 'glass_bridge/glass_service'; }
};
