import XCTest
@testable import Bridget

final class BridgetTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(String(describing: Bridget.AdSlot.self), "AdSlot")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
