//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Nathan Glass on 6/26/15.
//
//

import XCTest
import UIKit

class FoodTrackerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // MARK: FoodTracker Tests
    func testMealInitialization(){
        
        // success cases
        let potentialItem = Meal(name: "newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // failure cases
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid")
    }
}
