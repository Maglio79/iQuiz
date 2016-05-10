//
//  TableViewCell.swift
//  iQuiz
//
//  Created by Chris Maglio on 5/3/16.
//  Copyright © 2016 Chris Maglio. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var topicDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
