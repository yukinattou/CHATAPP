//
//  CollectionViewCell.swift
//  ChatApp
//
//  Created by 角田幸奈 on 2020/11/28.
//  Copyright © 2020 角田幸奈. All rights reserved.
//

import UIKit


class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var TeachersImag: UIImageView!
 
    
    @IBOutlet weak var TeachersName: UILabel!
    
    @IBOutlet weak var Ftype: UILabel!
    

    @IBOutlet weak var offbutton: UIButton!
    
 



    
    @IBAction func onbutton(_ sender: UIButton) {
     
       
        _ = UIImage(named: "heart")
               _ = UIControl.State.normal
                    offbutton.setImage(UIImage(systemName: "heart.fill"), for: .selected)

    }
    
}
    
    
