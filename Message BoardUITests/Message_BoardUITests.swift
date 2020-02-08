//
//  Message_BoardUITests.swift
//  Message BoardUITests
//
//  Created by Spencer Curtis on 9/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest

class Message_BoardUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        app = XCUIApplication()
        
        // NOTE: Keep this setup as is for UI Testing
        app.launchArguments = ["UITesting"]
        app.launch()
    }
    
        private var createThread: XCUIElement {
            return app.tables.textFields["Create a new thread:"]
        }

        private var sender: XCUIElement {
            return app.textFields["NameTextField"]
        }

        private var messageTextView: XCUIElement {
            return app.textViews["MessageTextField"]
        }
    //
        
        func testCreatingThread() {
            let threadTextField = app.textFields["Create a new thread:"]
            threadTextField.tap()
            threadTextField.typeText("Enayatullah\n")
            let cell = app.tables.cells.staticTexts["Enayatullah"]
            XCTAssertEqual(cell.label, "Enayatullah")
            
        }
    
}
