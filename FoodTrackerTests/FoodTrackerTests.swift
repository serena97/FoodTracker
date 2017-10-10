//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Serena on 6/2/17.
//  Copyright © 2017 Serena. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
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
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testValidMeals(){
        let validNameMeal = Meal(name:"Pasta", rating:5, image:UIImage(named:"defaultPhoto")!)
        
        XCTAssertNotNil(validNameMeal)
        
        let validRatingMeal = Meal(name: "meat", rating:1, image:UIImage(named:"defaultPhoto")!)
        
        XCTAssertNotNil(validRatingMeal)
    }
    
    func testNotValidMeals(){
        let invalidRatingMeal = Meal(name: "Pizza", rating:-1, image:UIImage(named:"defaultPhoto")!)
        
        
        XCTAssertNil(invalidRatingMeal)
        
        let invalidNameMeal = Meal(name: "", rating:2, image:UIImage(named:"defaultPhoto")!)
        
        XCTAssertNil(invalidNameMeal)
        
        
    }
    
    
    
}
