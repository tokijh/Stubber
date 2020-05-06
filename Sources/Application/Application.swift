//
//  Application.swift
//  Stubber
//
//  Created by tokijh on 2020/05/04.
//

import Service
import Stubber

import CoreFoundation

public class Application {
  private let service: ServiceProtocol

  public init(service: ServiceProtocol) {
    self.service = service
  }

  public func create() -> String {
    print("Application", Stubber.functionAddress(of: self.service.create))
    return self.service.create()
  }

  public func fetch(id: String) -> String {
    return self.service.fetch(id: id)
  }
}
