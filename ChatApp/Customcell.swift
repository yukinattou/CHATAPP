//
//  Customcell.swift
//  ChatApp
//
//  Created by 角田幸奈 on 2021/01/11.
//  Copyright © 2021 角田幸奈. All rights reserved.
//

import UIKit

class Customcell: UICollectionViewCell {
    
    @IBOutlet weak var TeachersImag: UIImageView!
    @IBOutlet weak var TeachersName: UILabel!
    @IBOutlet weak var Ftype: UILabel!
    
   
   
    @IBOutlet weak var offheart: UIButton!
    
    @IBAction func onheart(_ sender: Any) {
        
        let image = UIImage(systemName: "heart.fill")
               let state = UIControl.State.normal

        offheart.setImage(image, for: state)
        
        
    
    }
    
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
     
            }
 


 
  
    
    
}
