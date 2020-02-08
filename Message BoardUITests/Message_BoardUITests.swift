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
    
//        private var createThread: XCUIElement {
//            return app.tables.textFields["Create a new thread:"]
//        }

//        private var sender: XCUIElement {
//            return app.textFields["NameTextField"]
//        }

//        private var messageTextView: XCUIElement {
//            return app.textViews["MessageTextField"]
//        }
        
        func testCreatingThread() {
            let threadTextField = app.textFields["Create a new thread:"]
            threadTextField.tap()
            threadTextField.typeText("Enayatullah\n")
            let cell = app.tables.cells.staticTexts["Enayatullah"]
            XCTAssertEqual(cell.label, "Enayatullah")
           
            
//            let app = XCUIApplication()
//            app.tables/*@START_MENU_TOKEN@*/.staticTexts["test 1"]/*[[".cells.staticTexts[\"test 1\"]",".staticTexts[\"test 1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//            app.navigationBars["test 1"].buttons["Add"].tap()
//            app.textFields["Enter your name:"].tap()
//
//            let textView = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .textView).element
//            textView.tap()
//            textView.tap()
            
        }
    
    func testSelectingMessageThread() {
        
        testCreatingThread()
        let textSender = app.textFields["Enter your name:"]
        let detail = app.textViews["MessageTextField"]
        
        app.tables.staticTexts["Enayatullah"].tap() // tap name
        XCTAssert(app.navigationBars.staticTexts["Enayatullah"].exists) // navigation bar text
        
        app.navigationBars.buttons["Add"].tap() // add
        
    
//        sender.tap() // tap sender
        textSender.tap()
//        sender.typeText("Enayatullah") // user the text
        
        app.typeText("Enayatullah") // Fails
        
        
//
        
//        let cell = app.tables.cells.staticTexts["Enayatullah"]
//        XCTAssertEqual(cell.label, "Enayatullah")
        
        detail.tap() // tap message field
        detail.typeText("Detail text") // text
        
        app.navigationBars["New Message"].buttons["Send"].tap() // tap send
        
        //check
        let messageText = app.tables.staticTexts["Detail text"]
        XCTAssertTrue(messageText.exists)
        
    }
    
    
    
}
