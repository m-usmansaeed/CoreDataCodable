//
//  CodingUserInfoKey+Util.swift
//  CoreDataCodable
//
//  Created by Usman Saeed on 12/22/18.
//  Copyright © 2018 Usman Saeed. All rights reserved.
//

import Foundation

public extension CodingUserInfoKey {
    // Helper property to retrieve the Core Data managed object context
    static let managedObjectContext = CodingUserInfoKey(rawValue: "managedObjectContext")
}
