//
//  ImageCell.swift
//  Self-sizing-ImageCell
//
//  Created by Atthachai Meethong on 10/8/17.
//  Copyright © 2017 Atthachai Meethong. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {

    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var photoAspect: NSLayoutConstraint!
    private var tempConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tempConstraint = NSLayoutConstraint(
            item: photoAspect.firstItem as Any,
            attribute: photoAspect.firstAttribute,
            relatedBy: photoAspect.relation,
            toItem: photoAspect.secondItem,
            attribute: photoAspect.secondAttribute,
            multiplier: photoAspect.multiplier,
            constant: photoAspect.constant)
        
        tempConstraint.priority = photoAspect.priority
        tempConstraint.shouldBeArchived = photoAspect.shouldBeArchived
        tempConstraint.identifier = photoAspect.identifier
        
        NSLayoutConstraint.deactivate([photoAspect])
    }
    
    func setImage(_ image: UIImage) {
        photoView.image = image
        let multiplier = image.size.width / image.size.height
        tempConstraint = ConstraintManager.change(multiplier: multiplier, constraint: tempConstraint)
    }

}
