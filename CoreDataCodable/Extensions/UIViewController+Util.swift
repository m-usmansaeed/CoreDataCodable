//
//  UIViewController+Util.swift
//  CoreDataCodable
//
//  Created by Usman Saeed on 12/22/18.
//  Copyright © 2018 Usman Saeed. All rights reserved.
//

import UIKit

extension UIViewController {
    func showError(_ title: String, message: String) {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        present(alertController, animated: true, completion: nil)
    }    
}
