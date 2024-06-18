//
//  SimpleDemoMvvmSwiftUIUITests.swift
//  SimpleDemoMvvmSwiftUIUITests
//
//  Created by Kamlakar Shimpi on 17/06/24.
//

import XCTest

final class SimpleDemoMvvmSwiftUIUITests: XCTestCase {

    override func setUpWithError() throws {

        continueAfterFailure = false
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        app.navigationBars["Comment List"].staticTexts["Comment List"].tap()
        app.collectionViews["Sidebar"]/*@START_MENU_TOKEN@*/.staticTexts["Name id labore ex et quam laborum)"]/*[[".cells",".buttons[\"Name id labore ex et quam laborum), Email is Eliseo@gardner.biz)\"].staticTexts[\"Name id labore ex et quam laborum)\"]",".staticTexts[\"Name id labore ex et quam laborum)\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
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
