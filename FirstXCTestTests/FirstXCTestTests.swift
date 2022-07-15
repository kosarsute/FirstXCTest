//
//  FirstXCTestTests.swift
//  FirstXCTestTests
//
//  Created by SERGEI KOSAREV on 7/14/22.
//

import XCTest
@testable import FirstXCTest

class FirstXCTestTests: XCTestCase {
    
    var sut: ViewController!

    override func setUp()  {
        super.setUp()
        sut = ViewController()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown()  {
        sut = nil
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testLowestVolumeShouldBeZero() {
        sut.setVolume(value: -100)
        let volume = sut.volume
        XCTAssert(volume == 0, "Lowest volume should be equal 0")
    }
    func testHighestVolumeShouldBe100() {
        sut.setVolume(value: 200)
        let volume = sut.volume
        XCTAssert(volume == 100, "Highest volume should be equal 100")
    }
    func testCharsInStringsAreTheSame() {
        let string1 = "qwerty"
        let string2 = "ytrewq"
        let bool = sut.charactersCompare(stringOne: string1, stringTwo: string2)
        XCTAssert(bool, "Characters should be the same in two strings")
    }
    func testCharsInStringsAreDiffrent() {
        let string1 = "qwerty1"
        let string2 = "ytrewq"
        let bool = sut.charactersCompare(stringOne: string1, stringTwo: string2)
        XCTAssert(!bool, "Characters should be different in two strings")
    }
}
