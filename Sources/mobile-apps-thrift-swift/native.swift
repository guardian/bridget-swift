/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public final class AdSlot {

  public var x: Int32?

  public var y: Int32?

  public var height: Int32?

  public var width: Int32?


  public init() { }
  public init(x: Int32?, y: Int32?, height: Int32?, width: Int32?) {
    self.x = x
    self.y = y
    self.height = height
    self.width = width
  }

}

public protocol Native {

  ///
  /// - Parameters:
  ///   - adSlots: 
  /// - Throws: 
  func insertAdverts(adSlots: TList<AdSlot>) throws

  ///
  /// - Returns: Int32
  /// - Throws: 
  func webviewVersionNumber() throws -> Int32

}

open class NativeClient : TClient /* , Native */ {

}

open class NativeProcessor /* Native */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Native) throws -> Void]

  public var service: Native

  public required init(service: Native) {
    self.service = service
  }

}

