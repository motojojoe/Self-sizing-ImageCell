//
//  ConstraintManager.swift
//  Self-sizing-ImageCell
//
//  Created by Atthachai Meethong on 10/9/17.
//  Copyright © 2017 Atthachai Meethong. All rights reserved.
//

import UIKit

struct ConstraintManager {
    static func change(multiplier: CGFloat, constraint: NSLayoutConstraint) -> NSLayoutConstraint{
        NSLayoutConstraint.deactivate([constraint])
        
        let newConstraint = NSLayoutConstraint(
            item: constraint.firstItem as Any,
            attribute: constraint.firstAttribute,
            relatedBy: constraint.relation,
            toItem: constraint.secondItem,
            attribute: constraint.secondAttribute,
            multiplier: multiplier,
            constant: constraint.constant)
        
        newConstraint.priority = constraint.priority
        newConstraint.shouldBeArchived = constraint.shouldBeArchived
        newConstraint.identifier = constraint.identifier
        
        NSLayoutConstraint.activate([newConstraint])
        
        return newConstraint
    }
}
