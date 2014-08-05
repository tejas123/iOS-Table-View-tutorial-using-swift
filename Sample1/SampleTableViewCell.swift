//
//  SampleTableViewCell.swift
//  Sample1
//
//  Created by TheAppGuruz-New-6 on 10/07/14.
//  Copyright (c) 2014 TheAppGuruz-New-6. All rights reserved.
//

import UIKit

class SampleTableViewCell: UITableViewCell
{
    @IBOutlet var IvPhoto : UIImageView=nil
    @IBOutlet var lblTitle : UILabel=nil

    @IBOutlet var ivWidthConstraint : NSLayoutConstraint
    init(style: UITableViewCellStyle, reuseIdentifier: String)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Initialization code
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    
}
