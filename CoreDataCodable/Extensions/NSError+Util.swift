//
//  NSError+Util.swift
//  CoreDataCodable
//
//  Created by Usman Saeed on 12/22/18.
//  Copyright © 2018 Usman Saeed. All rights reserved.
//

import Foundation

extension NSError {
    static func createError(_ code: Int, description: String) -> NSError {
        return NSError(domain: "com.aprearo.TableView",
                       code: 400,
                       userInfo: [
                        "NSLocalizedDescription" : description
            ])
    }
}
