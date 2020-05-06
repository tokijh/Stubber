//
//  ServiceStub.swift
//  Stubber
//
//  Created by tokijh on 2020/05/04.
//

import Stubber
@testable import Service
import CoreFoundation

public class ServiceStub: ServiceProtocol {
  public init() {

  }

  public func create() -> String {
    print("ServiceStub", Stubber.functionAddress(of: create))
    return Stubber.invoke(create, args: (), default: "")
  }

  public func fetch(id: String) -> String {
    return Stubber.invoke(fetch(id:), args: (id), default: "")
  }
}
