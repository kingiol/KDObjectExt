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
        
        class CustomObject: NSObject {
            
        }
        
        let object = CustomObject()
        object.extValues = ["age": 10, "name": "kd"]
        
        XCTAssertEqual(object.extValues.description, "[\"age\": 10, \"name\": kd]")
        
        let age = object.extValue(for: "age", valueType: Int.self)
        XCTAssertEqual(age, 10)
        
        let newAgeWithIgnoreExist = object.setExtValue(for: "age", with: 20)
        XCTAssertEqual(newAgeWithIgnoreExist, true)
        var newAge = object.extValue(for: "age", valueType: Int.self)
        XCTAssertEqual(newAge, 20)
        
        let newAgeWithOutIgnoreExist = object.setExtValue(for: "age", with: 30, ignoreExist: false)
        XCTAssertEqual(newAgeWithOutIgnoreExist, false)
        newAge = object.extValue(for: "age", valueType: Int.self)
        XCTAssertEqual(newAge, 20)
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
