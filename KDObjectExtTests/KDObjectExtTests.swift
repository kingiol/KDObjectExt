//
//  KDObjectExtTests.swift
//  KDObjectExtTests
//
//  Created by Kingiol on 05/05/2017.
//  Copyright © 2017 7Plum. All rights reserved.
//

import XCTest
@testable import KDObjectExt

class KDObjectExtTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        class Student: NSObject {
            
        }
        
        let student = Student()
        student.extValue = ["key": "keyValue"]
        
        print("======================")
        print("\(student.extValue)")

        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}