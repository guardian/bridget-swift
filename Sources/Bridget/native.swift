/**
 * Autogenerated by Thrift Compiler (0.19.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public enum MediaEvent : TEnum {
  case request
  case ready
  case play
  case percent25
  case percent50
  case percent75
  case end

  public static func read(from proto: TProtocol) throws -> MediaEvent {
    let raw: Int32 = try proto.read()
    let new = MediaEvent(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(MediaEvent.self)")
    }
  }

  public init() {
    self = .request
  }

  public var rawValue: Int32 {
    switch self {
    case .request: return 0
    case .ready: return 1
    case .play: return 2
    case .percent25: return 3
    case .percent50: return 4
    case .percent75: return 5
    case .end: return 6
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 0: self = .request
    case 1: self = .ready
    case 2: self = .play
    case 3: self = .percent25
    case 4: self = .percent50
    case 5: self = .percent75
    case 6: self = .end
    default: return nil
    }
  }
}

public enum PurchaseScreenReason : TEnum {
  case hideads
  case epic

  public static func read(from proto: TProtocol) throws -> PurchaseScreenReason {
    let raw: Int32 = try proto.read()
    let new = PurchaseScreenReason(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(PurchaseScreenReason.self)")
    }
  }

  public init() {
    self = .hideads
  }

  public var rawValue: Int32 {
    switch self {
    case .hideads: return 0
    case .epic: return 1
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 0: self = .hideads
    case 1: self = .epic
    default: return nil
    }
  }
}

public enum SignInScreenReason : TEnum {
  case accessdiscussion
  case postcomment
  case recommendcomment
  case replytocomment
  case reportcomment

  public static func read(from proto: TProtocol) throws -> SignInScreenReason {
    let raw: Int32 = try proto.read()
    let new = SignInScreenReason(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(SignInScreenReason.self)")
    }
  }

  public init() {
    self = .accessdiscussion
  }

  public var rawValue: Int32 {
    switch self {
    case .accessdiscussion: return 0
    case .postcomment: return 1
    case .recommendcomment: return 2
    case .replytocomment: return 3
    case .reportcomment: return 4
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 0: self = .accessdiscussion
    case 1: self = .postcomment
    case 2: self = .recommendcomment
    case 3: self = .replytocomment
    case 4: self = .reportcomment
    default: return nil
    }
  }
}

public enum SignInScreenReferrer : TEnum {
  case accessdiscussion
  case postcomment
  case recommendcomment
  case replytocomment
  case reportcomment

  public static func read(from proto: TProtocol) throws -> SignInScreenReferrer {
    let raw: Int32 = try proto.read()
    let new = SignInScreenReferrer(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(SignInScreenReferrer.self)")
    }
  }

  public init() {
    self = .accessdiscussion
  }

  public var rawValue: Int32 {
    switch self {
    case .accessdiscussion: return 0
    case .postcomment: return 1
    case .recommendcomment: return 2
    case .replytocomment: return 3
    case .reportcomment: return 4
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 0: self = .accessdiscussion
    case 1: self = .postcomment
    case 2: self = .recommendcomment
    case 3: self = .replytocomment
    case 4: self = .reportcomment
    default: return nil
    }
  }
}

public enum DiscussionNativeError : TEnum {
  case unknown_error

  public static func read(from proto: TProtocol) throws -> DiscussionNativeError {
    let raw: Int32 = try proto.read()
    let new = DiscussionNativeError(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(DiscussionNativeError.self)")
    }
  }

  public init() {
    self = .unknown_error
  }

  public var rawValue: Int32 {
    switch self {
    case .unknown_error: return 0
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 0: self = .unknown_error
    default: return nil
    }
  }
}

public final class Rect {

  public var x: Double

  public var y: Double

  public var height: Double

  public var width: Double


  public init(x: Double, y: Double, height: Double, width: Double) {
    self.x = x
    self.y = y
    self.height = height
    self.width = width
  }

}

public final class AdSlot {

  public var rect: Rect

  public var targetingParams: TMap<String, String>?

  public var isSquare: Bool


  public init(rect: Rect, isSquare: Bool) {
    self.rect = rect
    self.isSquare = isSquare
  }

  public init(rect: Rect, targetingParams: TMap<String, String>?, isSquare: Bool) {
    self.rect = rect
    self.targetingParams = targetingParams
    self.isSquare = isSquare
  }

}

public final class Topic {

  public var id: String

  public var displayName: String

  public var type: String


  public init(id: String, displayName: String, type: String) {
    self.id = id
    self.displayName = displayName
    self.type = type
  }

}

public final class Image {

  public var url: String

  public var width: Double

  public var height: Double

  public var caption: String?

  public var credit: String?


  public init(url: String, width: Double, height: Double) {
    self.url = url
    self.width = width
    self.height = height
  }

  public init(url: String, width: Double, height: Double, caption: String?, credit: String?) {
    self.url = url
    self.width = width
    self.height = height
    self.caption = caption
    self.credit = credit
  }

}

public final class Epic {

  public var title: String

  public var body: String

  public var firstButton: String

  public var secondButton: String?


  public init(title: String, body: String, firstButton: String) {
    self.title = title
    self.body = body
    self.firstButton = firstButton
  }

  public init(title: String, body: String, firstButton: String, secondButton: String?) {
    self.title = title
    self.body = body
    self.firstButton = firstButton
    self.secondButton = secondButton
  }

}

public final class MaybeEpic {

  public var epic: Epic?


  public init() { }
  public init(epic: Epic?) {
    self.epic = epic
  }

}

public final class VideoSlot {

  public var rect: Rect

  public var videoId: String

  public var posterUrl: String

  public var duration: Int32?


  public init(rect: Rect, videoId: String, posterUrl: String) {
    self.rect = rect
    self.videoId = videoId
    self.posterUrl = posterUrl
  }

  public init(rect: Rect, videoId: String, posterUrl: String, duration: Int32?) {
    self.rect = rect
    self.videoId = videoId
    self.posterUrl = posterUrl
    self.duration = duration
  }

}

public final class MetricPaint {

  public var time: Double


  public init(time: Double) {
    self.time = time
  }

}

public final class MetricFont {

  public var duration: Double

  public var size: Int32?

  public var name: String?


  public init(duration: Double) {
    self.duration = duration
  }

  public init(duration: Double, size: Int32?, name: String?) {
    self.duration = duration
    self.size = size
    self.name = name
  }

}

public enum Metric {

  case firstPaint(val: MetricPaint)

  case firstContentfulPaint(val: MetricPaint)

  case font(val: MetricFont)
}

public final class VideoEvent {

  /// for YouTube Atoms videoId should the atom id
  public var videoId: String

  public var event: MediaEvent


  public init(videoId: String, event: MediaEvent) {
    self.videoId = videoId
    self.event = event
  }

}

public enum DiscussionServiceResponse {

  /// the JSON parsing will be done in DCR
  case response(val: String)

  case error(val: DiscussionNativeError)
}

public protocol Environment {

  ///
  /// - Returns: String
  /// - Throws: 
  func nativeThriftPackageVersion() throws -> String

  ///
  /// - Returns: Bool
  /// - Throws: 
  func isMyGuardianEnabled() throws -> Bool

}

open class EnvironmentClient : TClient /* , Environment */ {

}

public protocol EnvironmentAsync {

  ///
  ///   - completion: Result<String, Error> wrapping return and following Exceptions: 
  func nativeThriftPackageVersion(completion: @escaping (Result<String, Error>) -> Void)

  ///
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func isMyGuardianEnabled(completion: @escaping (Result<Bool, Error>) -> Void)

}

open class EnvironmentProcessor /* Environment */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Environment) throws -> Void]

  public var service: Environment

  public required init(service: Environment) {
    self.service = service
  }

}

open class EnvironmentProcessorAsync /* Environment */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, EnvironmentAsync) throws -> Void]

  public var service: EnvironmentAsync

  public required init(service: EnvironmentAsync) {
    self.service = service
  }

}

public protocol Commercial {

  ///
  /// - Parameters:
  ///   - adSlots: 
  /// - Throws: 
  func insertAdverts(adSlots: TList<AdSlot>) throws

  ///
  /// - Parameters:
  ///   - adSlots: 
  /// - Throws: 
  func updateAdverts(adSlots: TList<AdSlot>) throws

}

open class CommercialClient : TClient /* , Commercial */ {

}

public protocol CommercialAsync {

  ///
  /// - Parameters:
  ///   - adSlots: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func insertAdverts(adSlots: TList<AdSlot>, completion: @escaping (Result<Void, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - adSlots: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func updateAdverts(adSlots: TList<AdSlot>, completion: @escaping (Result<Void, Error>) -> Void)

}

open class CommercialProcessor /* Commercial */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Commercial) throws -> Void]

  public var service: Commercial

  public required init(service: Commercial) {
    self.service = service
  }

}

open class CommercialProcessorAsync /* Commercial */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, CommercialAsync) throws -> Void]

  public var service: CommercialAsync

  public required init(service: CommercialAsync) {
    self.service = service
  }

}

public protocol Acquisitions {

  ///
  /// - Parameters:
  ///   - reason: 
  /// - Throws: 
  func launchPurchaseScreen(reason: PurchaseScreenReason) throws

  ///
  /// - Returns: MaybeEpic
  /// - Throws: 
  func getEpics() throws -> MaybeEpic

  ///
  /// - Throws: 
  func epicSeen() throws

}

open class AcquisitionsClient : TClient /* , Acquisitions */ {

}

public protocol AcquisitionsAsync {

  ///
  /// - Parameters:
  ///   - reason: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func launchPurchaseScreen(reason: PurchaseScreenReason, completion: @escaping (Result<Void, Error>) -> Void)

  ///
  ///   - completion: Result<MaybeEpic, Error> wrapping return and following Exceptions: 
  func getEpics(completion: @escaping (Result<MaybeEpic, Error>) -> Void)

  ///
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func epicSeen(completion: @escaping (Result<Void, Error>) -> Void)

}

open class AcquisitionsProcessor /* Acquisitions */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Acquisitions) throws -> Void]

  public var service: Acquisitions

  public required init(service: Acquisitions) {
    self.service = service
  }

}

open class AcquisitionsProcessorAsync /* Acquisitions */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, AcquisitionsAsync) throws -> Void]

  public var service: AcquisitionsAsync

  public required init(service: AcquisitionsAsync) {
    self.service = service
  }

}

public protocol Tag {

  ///
  /// - Parameters:
  ///   - topic: 
  /// - Returns: Bool
  /// - Throws: 
  func follow(topic: Topic) throws -> Bool

  ///
  /// - Parameters:
  ///   - topic: 
  /// - Returns: Bool
  /// - Throws: 
  func unfollow(topic: Topic) throws -> Bool

  ///
  /// - Parameters:
  ///   - topic: 
  /// - Returns: Bool
  /// - Throws: 
  func isFollowing(topic: Topic) throws -> Bool

}

open class TagClient : TClient /* , Tag */ {

}

public protocol TagAsync {

  ///
  /// - Parameters:
  ///   - topic: 
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func follow(topic: Topic, completion: @escaping (Result<Bool, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - topic: 
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func unfollow(topic: Topic, completion: @escaping (Result<Bool, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - topic: 
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func isFollowing(topic: Topic, completion: @escaping (Result<Bool, Error>) -> Void)

}

open class TagProcessor /* Tag */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Tag) throws -> Void]

  public var service: Tag

  public required init(service: Tag) {
    self.service = service
  }

}

open class TagProcessorAsync /* Tag */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, TagAsync) throws -> Void]

  public var service: TagAsync

  public required init(service: TagAsync) {
    self.service = service
  }

}

public protocol Notifications {

  ///
  /// - Parameters:
  ///   - topic: 
  /// - Returns: Bool
  /// - Throws: 
  func follow(topic: Topic) throws -> Bool

  ///
  /// - Parameters:
  ///   - topic: 
  /// - Returns: Bool
  /// - Throws: 
  func unfollow(topic: Topic) throws -> Bool

  ///
  /// - Parameters:
  ///   - topic: 
  /// - Returns: Bool
  /// - Throws: 
  func isFollowing(topic: Topic) throws -> Bool

}

open class NotificationsClient : TClient /* , Notifications */ {

}

public protocol NotificationsAsync {

  ///
  /// - Parameters:
  ///   - topic: 
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func follow(topic: Topic, completion: @escaping (Result<Bool, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - topic: 
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func unfollow(topic: Topic, completion: @escaping (Result<Bool, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - topic: 
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func isFollowing(topic: Topic, completion: @escaping (Result<Bool, Error>) -> Void)

}

open class NotificationsProcessor /* Notifications */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Notifications) throws -> Void]

  public var service: Notifications

  public required init(service: Notifications) {
    self.service = service
  }

}

open class NotificationsProcessorAsync /* Notifications */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, NotificationsAsync) throws -> Void]

  public var service: NotificationsAsync

  public required init(service: NotificationsAsync) {
    self.service = service
  }

}

public protocol User {

  ///
  /// - Returns: Bool
  /// - Throws: 
  func isPremium() throws -> Bool

  ///
  /// - Parameters:
  ///   - articleIds: 
  /// - Returns: TList<String>
  /// - Throws: 
  func filterSeenArticles(articleIds: TList<String>) throws -> TList<String>

  ///
  /// - Returns: String
  /// - Throws: 
  func discussionId() throws -> String

  ///
  /// - Returns: Bool
  /// - Throws: 
  func doesCcpaApply() throws -> Bool

  ///
  /// - Returns: Bool
  /// - Throws: 
  func isSignedIn() throws -> Bool

  ///
  /// - Parameters:
  ///   - reason: 
  ///   - referrer: 
  /// - Returns: Bool
  /// - Throws: 
  func signIn(reason: SignInScreenReason, referrer: SignInScreenReferrer) throws -> Bool

}

open class UserClient : TClient /* , User */ {

}

public protocol UserAsync {

  ///
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func isPremium(completion: @escaping (Result<Bool, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - articleIds: 
  ///   - completion: Result<TList<String>, Error> wrapping return and following Exceptions: 
  func filterSeenArticles(articleIds: TList<String>, completion: @escaping (Result<TList<String>, Error>) -> Void)

  ///
  ///   - completion: Result<String, Error> wrapping return and following Exceptions: 
  func discussionId(completion: @escaping (Result<String, Error>) -> Void)

  ///
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func doesCcpaApply(completion: @escaping (Result<Bool, Error>) -> Void)

  ///
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func isSignedIn(completion: @escaping (Result<Bool, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - reason: 
  ///   - referrer: 
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func signIn(reason: SignInScreenReason, referrer: SignInScreenReferrer, completion: @escaping (Result<Bool, Error>) -> Void)

}

open class UserProcessor /* User */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, User) throws -> Void]

  public var service: User

  public required init(service: User) {
    self.service = service
  }

}

open class UserProcessorAsync /* User */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, UserAsync) throws -> Void]

  public var service: UserAsync

  public required init(service: UserAsync) {
    self.service = service
  }

}

public protocol Gallery {

  ///
  /// - Parameters:
  ///   - images: 
  ///   - selectedIndex: 
  ///   - articleTitle: 
  /// - Throws: 
  func launchSlideshow(images: TList<Image>, selectedIndex: Int32, articleTitle: String) throws

}

open class GalleryClient : TClient /* , Gallery */ {

}

public protocol GalleryAsync {

  ///
  /// - Parameters:
  ///   - images: 
  ///   - selectedIndex: 
  ///   - articleTitle: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func launchSlideshow(images: TList<Image>, selectedIndex: Int32, articleTitle: String, completion: @escaping (Result<Void, Error>) -> Void)

}

open class GalleryProcessor /* Gallery */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Gallery) throws -> Void]

  public var service: Gallery

  public required init(service: Gallery) {
    self.service = service
  }

}

open class GalleryProcessorAsync /* Gallery */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, GalleryAsync) throws -> Void]

  public var service: GalleryAsync

  public required init(service: GalleryAsync) {
    self.service = service
  }

}

public protocol Videos {

  ///
  /// - Parameters:
  ///   - videoSlots: 
  /// - Throws: 
  func insertVideos(videoSlots: TList<VideoSlot>) throws

  ///
  /// - Parameters:
  ///   - videoSlots: 
  /// - Throws: 
  func updateVideos(videoSlots: TList<VideoSlot>) throws

  ///
  /// - Parameters:
  ///   - videoEvent: 
  /// - Throws: 
  func sendVideoEvent(videoEvent: VideoEvent) throws

  /// Android only
  ///
  /// - Parameters:
  ///   - isFullscreen: 
  /// - Throws: 
  func setFullscreen(isFullscreen: Bool) throws

  /// Android requires the web layer to resize and style the player for fullscreen
  ///
  /// - Returns: Bool
  /// - Throws: 
  func webFullscreen() throws -> Bool

}

open class VideosClient : TClient /* , Videos */ {

}

public protocol VideosAsync {

  ///
  /// - Parameters:
  ///   - videoSlots: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func insertVideos(videoSlots: TList<VideoSlot>, completion: @escaping (Result<Void, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - videoSlots: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func updateVideos(videoSlots: TList<VideoSlot>, completion: @escaping (Result<Void, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - videoEvent: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func sendVideoEvent(videoEvent: VideoEvent, completion: @escaping (Result<Void, Error>) -> Void)

  /// Android only
  ///
  /// - Parameters:
  ///   - isFullscreen: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func setFullscreen(isFullscreen: Bool, completion: @escaping (Result<Void, Error>) -> Void)

  /// Android requires the web layer to resize and style the player for fullscreen
  ///
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func webFullscreen(completion: @escaping (Result<Bool, Error>) -> Void)

}

open class VideosProcessor /* Videos */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Videos) throws -> Void]

  public var service: Videos

  public required init(service: Videos) {
    self.service = service
  }

}

open class VideosProcessorAsync /* Videos */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, VideosAsync) throws -> Void]

  public var service: VideosAsync

  public required init(service: VideosAsync) {
    self.service = service
  }

}

public protocol Metrics {

  ///
  /// - Parameters:
  ///   - metrics: 
  /// - Throws: 
  func sendMetrics(metrics: TList<Metric>) throws

}

open class MetricsClient : TClient /* , Metrics */ {

}

public protocol MetricsAsync {

  ///
  /// - Parameters:
  ///   - metrics: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func sendMetrics(metrics: TList<Metric>, completion: @escaping (Result<Void, Error>) -> Void)

}

open class MetricsProcessor /* Metrics */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Metrics) throws -> Void]

  public var service: Metrics

  public required init(service: Metrics) {
    self.service = service
  }

}

open class MetricsProcessorAsync /* Metrics */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, MetricsAsync) throws -> Void]

  public var service: MetricsAsync

  public required init(service: MetricsAsync) {
    self.service = service
  }

}

/// only available for signed in user, see https://github.com/guardian/bridget/issues/149
public protocol Discussion {

  ///
  /// - Parameters:
  ///   - commentId: 
  /// - Returns: DiscussionServiceResponse
  /// - Throws: 
  func recommend(commentId: String) throws -> DiscussionServiceResponse

  ///
  /// - Parameters:
  ///   - shortUrl: 
  ///   - body: 
  /// - Returns: DiscussionServiceResponse
  /// - Throws: 
  func comment(shortUrl: String, body: String) throws -> DiscussionServiceResponse

  ///
  /// - Parameters:
  ///   - shortUrl: 
  ///   - body: 
  ///   - parentCommentId: 
  /// - Returns: DiscussionServiceResponse
  /// - Throws: 
  func reply(shortUrl: String, body: String, parentCommentId: String) throws -> DiscussionServiceResponse

  ///
  /// - Returns: DiscussionServiceResponse
  /// - Throws: 
  func getUserProfile() throws -> DiscussionServiceResponse

}

open class DiscussionClient : TClient /* , Discussion */ {

}

/// only available for signed in user, see https://github.com/guardian/bridget/issues/149
public protocol DiscussionAsync {

  ///
  /// - Parameters:
  ///   - commentId: 
  ///   - completion: Result<DiscussionServiceResponse, Error> wrapping return and following Exceptions: 
  func recommend(commentId: String, completion: @escaping (Result<DiscussionServiceResponse, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - shortUrl: 
  ///   - body: 
  ///   - completion: Result<DiscussionServiceResponse, Error> wrapping return and following Exceptions: 
  func comment(shortUrl: String, body: String, completion: @escaping (Result<DiscussionServiceResponse, Error>) -> Void)

  ///
  /// - Parameters:
  ///   - shortUrl: 
  ///   - body: 
  ///   - parentCommentId: 
  ///   - completion: Result<DiscussionServiceResponse, Error> wrapping return and following Exceptions: 
  func reply(shortUrl: String, body: String, parentCommentId: String, completion: @escaping (Result<DiscussionServiceResponse, Error>) -> Void)

  ///
  ///   - completion: Result<DiscussionServiceResponse, Error> wrapping return and following Exceptions: 
  func getUserProfile(completion: @escaping (Result<DiscussionServiceResponse, Error>) -> Void)

}

open class DiscussionProcessor /* Discussion */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Discussion) throws -> Void]

  public var service: Discussion

  public required init(service: Discussion) {
    self.service = service
  }

}

open class DiscussionProcessorAsync /* Discussion */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, DiscussionAsync) throws -> Void]

  public var service: DiscussionAsync

  public required init(service: DiscussionAsync) {
    self.service = service
  }

}

public protocol Analytics {

  ///
  /// - Parameters:
  ///   - targetingParams: 
  /// - Throws: 
  func sendTargetingParams(targetingParams: TMap<String, String>) throws

}

open class AnalyticsClient : TClient /* , Analytics */ {

}

public protocol AnalyticsAsync {

  ///
  /// - Parameters:
  ///   - targetingParams: 
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func sendTargetingParams(targetingParams: TMap<String, String>, completion: @escaping (Result<Void, Error>) -> Void)

}

open class AnalyticsProcessor /* Analytics */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Analytics) throws -> Void]

  public var service: Analytics

  public required init(service: Analytics) {
    self.service = service
  }

}

open class AnalyticsProcessorAsync /* Analytics */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, AnalyticsAsync) throws -> Void]

  public var service: AnalyticsAsync

  public required init(service: AnalyticsAsync) {
    self.service = service
  }

}

public protocol Navigation {

  ///
  /// - Throws: 
  func openPrivacySettings() throws

  ///
  /// - Throws: 
  func openPrivacyPolicy() throws

}

open class NavigationClient : TClient /* , Navigation */ {

}

public protocol NavigationAsync {

  ///
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func openPrivacySettings(completion: @escaping (Result<Void, Error>) -> Void)

  ///
  ///   - completion: Result<Void, Error> wrapping return and following Exceptions: 
  func openPrivacyPolicy(completion: @escaping (Result<Void, Error>) -> Void)

}

open class NavigationProcessor /* Navigation */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Navigation) throws -> Void]

  public var service: Navigation

  public required init(service: Navigation) {
    self.service = service
  }

}

open class NavigationProcessorAsync /* Navigation */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, NavigationAsync) throws -> Void]

  public var service: NavigationAsync

  public required init(service: NavigationAsync) {
    self.service = service
  }

}

/// Service to manage requests from the weblayer related to newsletter subscriptions.
/// added  version 2.0.0
/// methods:
///  - requestSignUp: request to sign up to a newsletter using an email address entered by the user.
/// Returns `true` if the request was successful, `false` if it failed for any reason. Exceptions
/// thrown will be discarded.
public protocol Newsletters {

  ///
  /// - Parameters:
  ///   - emailAddress: 
  ///   - newsletterIdentityName: 
  /// - Returns: Bool
  /// - Throws: 
  func requestSignUp(emailAddress: String, newsletterIdentityName: String) throws -> Bool

}

open class NewslettersClient : TClient /* , Newsletters */ {

}

/// Service to manage requests from the weblayer related to newsletter subscriptions.
/// added  version 2.0.0
/// methods:
///  - requestSignUp: request to sign up to a newsletter using an email address entered by the user.
/// Returns `true` if the request was successful, `false` if it failed for any reason. Exceptions
/// thrown will be discarded.
public protocol NewslettersAsync {

  ///
  /// - Parameters:
  ///   - emailAddress: 
  ///   - newsletterIdentityName: 
  ///   - completion: Result<Bool, Error> wrapping return and following Exceptions: 
  func requestSignUp(emailAddress: String, newsletterIdentityName: String, completion: @escaping (Result<Bool, Error>) -> Void)

}

open class NewslettersProcessor /* Newsletters */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, Newsletters) throws -> Void]

  public var service: Newsletters

  public required init(service: Newsletters) {
    self.service = service
  }

}

open class NewslettersProcessorAsync /* Newsletters */ {

  typealias ProcessorHandlerDictionary = [String: (Int32, TProtocol, TProtocol, NewslettersAsync) throws -> Void]

  public var service: NewslettersAsync

  public required init(service: NewslettersAsync) {
    self.service = service
  }

}

public let BRIDGET_VERSION : String = "v0.0.0-2024-09-26-snapshot-1"


