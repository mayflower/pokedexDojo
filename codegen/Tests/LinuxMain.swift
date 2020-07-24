import XCTest

import codegenTests

var tests = [XCTestCaseEntry]()
tests += codegenTests.allTests()
XCTMain(tests)
