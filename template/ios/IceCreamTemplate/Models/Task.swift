//
//  Task.swift
//  IceCreamTemplate
//
//  Created by Leonid Zolotarev on 1/8/22.
//

import Foundation
import RealmSwift
import IceCream
import CloudKit

// A Realm persistable and IceCream/CloudKit syncronizable Task
class Task: Object {
    @objc dynamic var id = NSUUID().uuidString
    @objc dynamic var desc = ""
    @objc dynamic var isComplete = false
    @objc dynamic var isDeleted = false
    @objc dynamic var createdAt = Date()

    override class func primaryKey() -> String? {
        return "id"
    }
}

extension Task: CKRecordConvertible, CKRecordRecoverable {
    static var databaseScope: CKDatabase.Scope { .private }
}
