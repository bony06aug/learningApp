//
//  CustomButton.swift
//  LearningApp
//
//  Created by Shivam on 26/09/19.
//  Copyright © 2019 Shivam. All rights reserved.
//


import UIKit

class CustomButton: UIButton {
    
    var imageName : String = ""
    
    override  func awakeFromNib() {
        super.awakeFromNib()
        self.setup()
    }
    
    func setup() {
        let screenRect:CGRect           = UIScreen.main.bounds
        let screenWidth:CGFloat         = screenRect.size.width
        let scalefactor:CGFloat         = screenWidth / 375.0
        self.titleLabel!.font           =  UIFont(name: (self.titleLabel!.font.fontName), size: (self.titleLabel!.font.pointSize)*scalefactor)!
        self.isExclusiveTouch           = true
    }
    
    
}
