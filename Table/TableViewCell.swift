//
//  TableViewCell.swift
//  Table
//
//  Created by Camille Castillo on 19/01/2016.
//  Copyright © 2016 Camille Castillo. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var Label1: UILabel!
    
    @IBOutlet weak var Label2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        /*Label1.numberOfLines = 0
        Label1.lineBreakMode = NSLineBreakMode.ByWordWrapping
        Label1.sizeToFit()*/

        Label1.adjustsFontSizeToFitWidth = true
        //setTranslatesAutoresizingMaskIntoConstraints(true)
        
    }
    
    /*func requiredHeight() -> CGFloat{
        let font = UIFont(name: "Helvetica", size: 16.0)
        let label:UILabel = UILabel(frame: CGRectMake(0, 0, 200, CGFloat.max))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        label.sizeToFit()
        return label.frame.height + //Add some space as a part of your bottom and top constraint
    }*/

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
