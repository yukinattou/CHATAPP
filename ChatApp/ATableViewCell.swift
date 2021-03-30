//
//  ATableViewCell.swift
//  ChatApp
//
//  Created by 角田幸奈 on 2021/03/18.
//  Copyright © 2021 角田幸奈. All rights reserved.
//

import UIKit

class ATableViewCell: UITableViewCell {
    
    

    @IBOutlet weak var detail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
