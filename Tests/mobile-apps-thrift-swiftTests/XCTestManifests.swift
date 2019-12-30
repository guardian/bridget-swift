import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(mobile_apps_thrift_swiftTests.allTests),
    ]
}
#endif
