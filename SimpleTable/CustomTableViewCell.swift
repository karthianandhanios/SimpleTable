//
//  CustomTableViewCell.swift
//  SimpleTable
//
//  Created by Ravi on 17/06/15.
//  Copyright (c) 2015 AppTuitions. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var imageVW: UIImageView!
    @IBOutlet var lblName: UILabel!
    
    @IBOutlet var firstSlotBtn: UIButton!
    @IBOutlet var secondSlotBtn: UIButton!
    @IBOutlet var thirdSlotBtn: UIButton!
    @IBOutlet var cellBgView: UIView!
    
    @IBAction func timeSlotBtnClicked(_ sender: Any) {
        let button = sender as! UIButton;
        if button.tag == 111 {
            button.layer.borderColor=UIColor.red.cgColor
            secondSlotBtn.layer.borderColor=UIColor.lightGray.cgColor
            thirdSlotBtn.layer.borderColor=UIColor.lightGray.cgColor
        }
        else if button.tag == 222 {
            button.layer.borderColor=UIColor.red.cgColor
            firstSlotBtn.layer.borderColor=UIColor.lightGray.cgColor
            thirdSlotBtn.layer.borderColor=UIColor.lightGray.cgColor
        }
     else   if button.tag == 333 {
            button.layer.borderColor=UIColor.red.cgColor
            secondSlotBtn.layer.borderColor=UIColor.lightGray.cgColor
            firstSlotBtn.layer.borderColor=UIColor.lightGray.cgColor
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let yourAttributes = [NSForegroundColorAttributeName: UIColor.black, NSFontAttributeName: UIFont.systemFont(ofSize: 15)]
        let yourOtherAttributes = [NSForegroundColorAttributeName: UIColor.red, NSFontAttributeName: UIFont.systemFont(ofSize: 15)]
        let partOne = NSMutableAttributedString(string: "4pm,FRI", attributes: yourAttributes)
        let partTwo = NSMutableAttributedString(string: "jan 26 2018", attributes: yourOtherAttributes)
        partOne.append(NSMutableAttributedString(string:"\n"))
        partOne.append(partTwo)
        secondSlotBtn.setAttributedTitle(partOne, for: .normal)
        firstSlotBtn.setAttributedTitle(partOne, for: .normal)
        thirdSlotBtn.setAttributedTitle(partOne, for: .normal)
    }
}
