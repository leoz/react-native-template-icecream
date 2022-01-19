//
//  RNSyncEngine.swift
//  IceCreamTemplate
//
//  Created by Leonid Zolotarev on 1/8/22.
//

import Foundation
import RealmSwift
import IceCream

@objc(RNSyncEngine)
class RNSyncEngine : NSObject {

  private var _syncEngine: SyncEngine? = nil

  @objc
  static func requiresMainQueueSetup() -> Bool {
      return false
  }

  @objc
  func startEngine() -> Void {
    DispatchQueue.main.async {
      self._syncEngine = SyncEngine(objects: [
        SyncObject(type: Task.self),
      ])
    }
  }

  @objc
  func pull() -> Void {
    DispatchQueue.main.async {
      self._syncEngine?.pull()
    }
  }
  
  @objc
  func pushAll() -> Void {
    DispatchQueue.main.async {
      self._syncEngine?.pushAll()
    }
  }
}
