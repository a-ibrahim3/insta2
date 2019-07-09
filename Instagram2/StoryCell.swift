//
//  StoryCell.swift
//  Instagram2
//
//  Created by Ahmed Ibrahim on 7/8/19.
//  Copyright © 2019 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class StoryCell: UICollectionViewCell {


    @IBOutlet weak var StoryImage: UIImageView!
    
    @IBOutlet weak var AddStoryButton: UIButton!
    
    @IBOutlet weak var StoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    StoryImage.layer.cornerRadius = StoryImage.frame.width/2
    StoryImage.clipsToBounds = true
    StoryImage.layer.borderWidth = 2
    StoryImage.layer.borderColor = UIColor.gray.cgColor
    
    }
}
