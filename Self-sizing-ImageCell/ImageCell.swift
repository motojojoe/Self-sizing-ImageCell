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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
