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
        sut.setVolume(value: 100)
        let volume = sut.volume
        
        XCTAssert(volume == 100, "Max volume should be 100")
    }

}
