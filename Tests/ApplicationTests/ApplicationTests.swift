//
//  ApplicationTests.swift
//  Stubber
//
//  Created by tokijh on 2020/05/04.
//

import XCTest
@testable import Application
import ServiceStub
import Stubber

public class ApplicationTests: XCTestCase {
  func test_create() {
    // given
    let service = ServiceStub()
    let application = Application(service: service)

    print("ApplicationTests", Stubber.functionAddress(of: service.create))

    // when
    application.create()

    // then
    let executions = Stubber.executions(application.create)
    XCTAssertEqual(executions.count, 1)
  }
}
