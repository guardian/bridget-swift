/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


fileprivate final class Webview_webviewThriftVersionNumber_args {


  fileprivate init() { }
}

fileprivate func ==(lhs: Webview_webviewThriftVersionNumber_args, rhs: Webview_webviewThriftVersionNumber_args) -> Bool {
  return true
}

extension Webview_webviewThriftVersionNumber_args : Hashable {

  fileprivate var hashValue : Int {
    return 31
  }

}

extension Webview_webviewThriftVersionNumber_args : TStruct {

  fileprivate static var fieldIds: [String: Int32] {
    return [:]
  }

  fileprivate static var structName: String { return "Webview_webviewThriftVersionNumber_args" }

  fileprivate static func read(from proto: TProtocol) throws -> Webview_webviewThriftVersionNumber_args {
    _ = try proto.readStructBegin()

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()

    return Webview_webviewThriftVersionNumber_args()
  }

}



fileprivate final class Webview_webviewThriftVersionNumber_result {

  fileprivate var success: Int32?


  fileprivate init() { }
  fileprivate init(success: Int32?) {
    self.success = success
  }

}

fileprivate func ==(lhs: Webview_webviewThriftVersionNumber_result, rhs: Webview_webviewThriftVersionNumber_result) -> Bool {
  return
    (lhs.success == rhs.success)
}

extension Webview_webviewThriftVersionNumber_result : Hashable {

  fileprivate var hashValue : Int {
    let prime = 31
    var result = 1
    result = prime &* result &+ (success?.hashValue ?? 0)
    return result
  }

}

extension Webview_webviewThriftVersionNumber_result : TStruct {

  fileprivate static var fieldIds: [String: Int32] {
    return ["success": 0, ]
  }

  fileprivate static var structName: String { return "Webview_webviewThriftVersionNumber_result" }

  fileprivate static func read(from proto: TProtocol) throws -> Webview_webviewThriftVersionNumber_result {
    _ = try proto.readStructBegin()
    var success: Int32?

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (0, .i32):             success = try Int32.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()

    return Webview_webviewThriftVersionNumber_result(success: success)
  }

}



extension WebviewClient : Webview {

  private func send_webviewThriftVersionNumber() throws {
    try outProtocol.writeMessageBegin(name: "webviewThriftVersionNumber", type: .call, sequenceID: 0)
    let args = Webview_webviewThriftVersionNumber_args()
    try args.write(to: outProtocol)
    try outProtocol.writeMessageEnd()
  }

  private func recv_webviewThriftVersionNumber() throws -> Int32 {
    try inProtocol.readResultMessageBegin() 
    let result = try Webview_webviewThriftVersionNumber_result.read(from: inProtocol)
    try inProtocol.readMessageEnd()

    if let success = result.success {
      return success
    }
    throw TApplicationError(error: .missingResult(methodName: "webviewThriftVersionNumber"))
  }

  public func webviewThriftVersionNumber() throws -> Int32 {
    try send_webviewThriftVersionNumber()
    try outProtocol.transport.flush()
    return try recv_webviewThriftVersionNumber()
  }

}

extension WebviewProcessor : TProcessor {

  static let processorHandlers: ProcessorHandlerDictionary = {

    var processorHandlers = ProcessorHandlerDictionary()

    processorHandlers["webviewThriftVersionNumber"] = { sequenceID, inProtocol, outProtocol, handler in

      let args = try Webview_webviewThriftVersionNumber_args.read(from: inProtocol)

      try inProtocol.readMessageEnd()

      var result = Webview_webviewThriftVersionNumber_result()
      do {
        result.success = try handler.webviewThriftVersionNumber()
      }
      catch let error { throw error }

      try outProtocol.writeMessageBegin(name: "webviewThriftVersionNumber", type: .reply, sequenceID: sequenceID)
      try result.write(to: outProtocol)
      try outProtocol.writeMessageEnd()
    }
    return processorHandlers
  }()

  public func process(on inProtocol: TProtocol, outProtocol: TProtocol) throws {

    let (messageName, _, sequenceID) = try inProtocol.readMessageBegin()

    if let processorHandler = WebviewProcessor.processorHandlers[messageName] {
      do {
        try processorHandler(sequenceID, inProtocol, outProtocol, service)
      }
      catch let error as TApplicationError {
        try outProtocol.writeException(messageName: messageName, sequenceID: sequenceID, ex: error)
      }
    }
    else {
      try inProtocol.skip(type: .struct)
      try inProtocol.readMessageEnd()
      let ex = TApplicationError(error: .unknownMethod(methodName: messageName))
      try outProtocol.writeException(messageName: messageName, sequenceID: sequenceID, ex: ex)
    }
  }
}

