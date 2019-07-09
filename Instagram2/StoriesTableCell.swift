//
//  StoriesTableCell.swift
//  Instagram2
//
//  Created by Ahmed Ibrahim on 7/8/19.
//  Copyright © 2019 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class StoriesTableCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    let photoos = [UIImage(named: "i1") , UIImage(named: "i2") , UIImage(named: "i3") , UIImage(named: "i4") , UIImage(named: "i5") , UIImage(named: "i6") , UIImage(named: "i7"), UIImage(named: "i8"), UIImage(named: "i9"), UIImage(named: "i10")]

     let asami = [ "Ahmed", "Azooz Abo Elmakarm", "Omar", "Dana", "Farah", "Mekawy", "Muaz" , "Karim" , "Lana" , "Tia"]
    @IBOutlet weak var myCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
        
 
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return asami.count 
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "StoryCell", for: indexPath) as! StoryCell
        cell.StoryImage.image = photoos[indexPath.row]
        cell.StoryLabel.text = asami[indexPath.row]
        
        return cell
    }


    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 80)
    }

}
