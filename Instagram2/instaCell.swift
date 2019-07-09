//
//  instaCell.swift
//  Instagram2
//
//  Created by Ahmed Ibrahim on 7/7/19.
//  Copyright © 2019 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class instaCell: UITableViewCell {

    @IBOutlet weak var ProfileImage: UIImageView!
    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var LocationLabel: UILabel!
    
    @IBOutlet weak var instaImage: UIImageView!
    
    @IBOutlet weak var NameLabeldown: UILabel!
    
    @IBOutlet weak var Caption: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        ProfileImage.layer.cornerRadius = ProfileImage.frame.width/2
        ProfileImage.clipsToBounds = true
        ProfileImage.layer.borderWidth = 2
        ProfileImage.layer.borderColor = UIColor.black.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
