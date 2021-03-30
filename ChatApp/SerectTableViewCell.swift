//
//  SerectTableViewCell.swift
//  ChatApp
//
//  Created by 角田幸奈 on 2021/03/16.
//  Copyright © 2021 角田幸奈. All rights reserved.
//

import UIKit

class SerectTableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var Category: UILabel!
    @IBOutlet weak var nexticon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
