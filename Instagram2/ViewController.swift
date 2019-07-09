//
//  ViewController.swift
//  Instagram2
//
//  Created by Ahmed Ibrahim on 7/7/19.
//  Copyright © 2019 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    let name = [ "Ahmed", "Azooz Abo Elmakarm", "Omar", "Dana", "Farah", "Mekawy", "Muaz" , "Karim" , "Lana" , "Tia"]
    
    let caption = [ "cute", "happy", "sad", "wedding", "funeral", "graduated", "sleeping" , "eating" , "gym" , "football"]
    
    let locations = [ "Qahwa", "Zone 60", "India", "Primos", "Berlin", "Tokyo", "USA" , "Neirobi" , "Gouna" , "Dahab"]
    
    let sowar = [UIImage(named: "i1") , UIImage(named: "i2") , UIImage(named: "i3") , UIImage(named: "i4") , UIImage(named: "i5") , UIImage(named: "i6") , UIImage(named: "i7"), UIImage(named: "i8"), UIImage(named: "i9"), UIImage(named: "i10")]
    
    

    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       myTableView.delegate = self
        myTableView.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.row == 0){
            let cell = myTableView.dequeueReusableCell(withIdentifier: "StoriesTableCell") as! StoriesTableCell
            
            return cell
        }
        else {
       let cell = myTableView.dequeueReusableCell(withIdentifier: "instaCell") as! instaCell
        
        cell.instaImage.image = sowar[indexPath.row]
        cell.NameLabel.text = name[indexPath.row]
        cell.LocationLabel.text = locations[indexPath.row]
        cell.NameLabeldown.text = name[indexPath.row]
        cell.Caption.text = caption[indexPath.row]
        
        return cell
    }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row == 0)
        {
            return 100
            
        }
        else
        {
            return UITableView.automaticDimension
        }
    }
    

}



