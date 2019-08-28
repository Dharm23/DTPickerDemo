//
//  DTPicker.swift
//  DTPickerDemo
//
//  Created by Apple Customer on 28/08/19.
//  Copyright © 2019 Apple Customer. All rights reserved.
//

import Foundation
import UIKit

protocol DTPickerProtocol:UIViewController {
    func didSelectOptions(results: String)
}

class DTPicker:NSObject
{
    let screenHeight = UIScreen.main.bounds.height
    
    static func initPickerWithOpetions(values: [String],title: String,message: String,delegate: DTPickerProtocol) {
        
        let departureActnSht = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.actionSheet)
        
        for strOption in values {
            let action = UIAlertAction(title: strOption, style: .default, handler: { UIAlertAction in
                delegate.didSelectOptions(results: strOption)
            })
            departureActnSht.addAction(action)
        }
        let cancel = UIAlertAction(title: NSLocalizedString("cancel", comment: ""), style: .cancel, handler: { UIAlertAction in
            departureActnSht.dismiss(animated: true, completion: {
                //
            })
        })
        departureActnSht.addAction(cancel)
        let height:NSLayoutConstraint = NSLayoutConstraint(item: departureActnSht.view as Any, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.height, multiplier: 1, constant: UIScreen.main.bounds.height/2)
        departureActnSht.view.addConstraint(height);
        delegate.present(departureActnSht, animated: true) {
            //
        }
    }
}
