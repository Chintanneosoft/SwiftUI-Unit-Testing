//
//  SwiftUI_Unit_TestingTests.swift
//  SwiftUI Unit TestingTests
//
//  Created by Neosoft on 28/11/23.
//

import XCTest
@testable import SwiftUI_Unit_Testing

final class SwiftUI_Unit_TestingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testRupeesToUSDSuccess() {
        let converter = Converters()
        let input = "400"
        let output = converter.convertRsToUSD(rupees: input)
        XCTAssertEqual(output, "$4.80")
    }
    
    func testRupeesToUSDNegative() {
        let converter = Converters()
        let input = "-2"
        let output = converter.convertRsToUSD(rupees: input)
        XCTAssertEqual(output, "Enter a Positive Number")
    }
    
    func testRupeesToUSDBig() {
        let converter = Converters()
        let input = "200000000000000000000000"
        let output = converter.convertRsToUSD(rupees: input)
        XCTAssertEqual(output, "Number to Big to be Converted")
    }
    
    
}
