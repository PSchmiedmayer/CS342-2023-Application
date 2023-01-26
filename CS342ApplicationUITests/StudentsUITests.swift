//
// This source file is part of the CS342 2023 Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import XCTest


class StudentsUITests: XCTestCase {
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }
    
    func testStudents() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.collectionViews.buttons["Raj Pabari"].tap()
        XCTAssert(app.staticTexts["Raj Pabari"].waitForExistence(timeout: 0.5))
        
        app.navigationBars.firstMatch.buttons["CS342"].tap()
        
        app.collectionViews.buttons["Andy Wang"].tap()
        XCTAssert(app.staticTexts["Andy Wang"].waitForExistence(timeout: 0.5))
        
        app.navigationBars.firstMatch.buttons["CS342"].tap()
        
        app.collectionViews.buttons["Adam Zhao"].tap()
        XCTAssert(app.staticTexts["Adam Zhao"].waitForExistence(timeout: 0.5))
    }
}
