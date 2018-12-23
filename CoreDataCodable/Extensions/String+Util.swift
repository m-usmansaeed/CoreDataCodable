//
//  String+Util.swift
//  CoreDataCodable
//
//  Created by Usman Saeed on 12/22/18.
//  Copyright © 2018 Usman Saeed. All rights reserved.
//

import Foundation

extension String {
    static func emptyIfNil(_ optionalString: String?) -> String {
        let text: String
        if let unwrapped = optionalString {
            text = unwrapped
        } else {
            text = ""
        }
        return text
    }
}
