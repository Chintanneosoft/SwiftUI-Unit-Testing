//
//  SwiftUI_Unit_TestingUITests.swift
//  SwiftUI Unit TestingUITests
//
//  Created by Neosoft on 28/11/23.
//

import XCTest

final class SwiftUI_Unit_TestingUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
                
        testConversionFlow(app:app)
        
    }

    func testConversionFlow(app:XCUIApplication) {
        // Tap on "Enter Currency" text field
        let enterCurrencyTextField = app.textFields["Enter Currency"]
        XCTAssertTrue(enterCurrencyTextField.exists, "The Enter Currency text field does not exist.")
        enterCurrencyTextField.tap()
        enterCurrencyTextField.typeText("30")
        
        // Tap on "Convert" button
        let convertButton = app.buttons["Convert"]
        XCTAssertTrue(convertButton.exists, "The Convert button does not exist.")
        convertButton.tap()
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
                    }
    }
}
