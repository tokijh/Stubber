//
//  Service.swift
//  Stubber
//
//  Created by tokijh on 2020/05/04.
//

public protocol ServiceProtocol {
  func create() -> String
  func fetch(id: String) -> String
}

public class Serivce: ServiceProtocol {
  public func create() -> String {
    return "create"
  }

  public func fetch(id: String) -> String {
    return "fetch by \(id)"
  }
}
