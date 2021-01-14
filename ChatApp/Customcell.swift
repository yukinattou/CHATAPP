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
    override func awakeFromNib() {
        super.awakeFromNib()
   
       
      
    }
    
    internal func xibViewSet() {
       if let view = Bundle.main.loadNibNamed("Customcell", owner: self, options: nil)?.first as? UIView {
         view.frame = self.bounds
         self.addSubview(view)

}
    }
}
