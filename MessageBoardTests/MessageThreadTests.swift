//
//  MessageThreadTests.swift
//  MessageBoardTests
//
//  Created by Andrew R Madsen on 9/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Message_Board

class MessageThreadTests: XCTestCase {
    
    func createMessageThread() {
        
        let messageThreadController = MessageThreadController()
        
        messageThreadController.createMessageThread(with: "Test Thread") { // creating message thread
            
            XCTAssertEqual(messageThreadController.messageThreads.last?.title, "Test Thread")
            
        }
        
    }
    
    func createMessage() {
        // creating a message
        let messageThreadController = MessageThreadController()
        
        messageThreadController.createMessageThread(with: "Test Thread") {
            
            XCTAssertEqual(messageThreadController.messageThreads.last?.title, "Test Thread")
            messageThreadController.createMessage(in: messageThreadController.messageThreads.last!, withText: "Test Messages", sender: "Enayatullah") {
                XCTAssertEqual(messageThreadController.messageThreads.last?.messages.last?.text, "Test Messages")
                
            }
        }
    }
    
    
    func testFetchMessageThread() {
        let messageThreadController = MessageThreadController()
        
        messageThreadController.fetchMessageThreads {
            XCTAssert(!messageThreadController.messageThreads.isEmpty)
            
        }
    }
}
