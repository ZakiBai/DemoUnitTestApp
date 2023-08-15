//
//  DemoUnitTestAppTests.swift
//  DemoUnitTestAppTests
//
//  Created by Zaki on 15.08.2023.
//

import XCTest
@testable import DemoUnitTestApp

final class DemoUnitTestAppTests: XCTestCase {

    private var sut: ViewController!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = ViewController()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
        
    }

    func testHighestVolumeShouldBe100() {
        sut.setVolume(value: 200)
        let volume = sut.volume
        
        XCTAssert(volume == 100, "Max volume should be 100")
    }
    
    func testLowesVolumeShouldBeZero() {
        sut.setVolume(value: -12)
        let volume = sut.volume
        
        XCTAssert(volume == 0, "Min volume should be 0")
    }
    
    func testCharsInStringShouldBeTheSame() {
        let wordOne = "qwerty"
        let wordTwo = "ytrewq"
        
        let compare = sut.compareChars(wordOne: wordOne, wordTwo: wordTwo)
        
        XCTAssert(compare, "Chars in string should be equal")
    }
    
    func testCharsInStringShouldBeDifferent() {
        let wordOne = "qwerty1"
        let wordTwo = "ytrewq"
        
        let compare = sut.compareChars(wordOne: wordOne, wordTwo: wordTwo)
        
        XCTAssert(!compare, "Chars in string should be different")
        
    }

}
