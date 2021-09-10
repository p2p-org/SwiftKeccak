import XCTest
@testable import SwiftKeccak
import Base58Swift

final class SwiftKeccakTests: XCTestCase {

    override func setUp() {
        print("setUp ...")
    }

    override func tearDown() {
        print("tearDown ...")
    }

    func testSwiftKeccak_Keccak_keccak256() throws {
        let hash: Data = keccak256("BTC/toSolana")
        XCTAssertEqual(Base58.base58Encode([UInt8](hash)), "2XWUS8dNzaAFeDk6e6Q4dsojE3n9jncAZ9nNBpCJWEgZ")

    }
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct
//        // results.
//        XCTAssertEqual(SwiftKeccak().text, "Hello, World!")
//    }

    static var allTests = [
        ("swiftKeccak_Keccak_keccak256", testSwiftKeccak_Keccak_keccak256),
    ]
}
