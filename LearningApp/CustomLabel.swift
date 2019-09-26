//
//  CustomLabel.swift
//  LearningApp
//
//  Created by Shivam on 26/09/19.
//  Copyright © 2019 Shivam. All rights reserved.
//


import UIKit

class CustomLabel: UILabel {

    override  func awakeFromNib() {
    super.awakeFromNib()
    self.setup()
    }
    
    func setup() {
    let screenRect:CGRect = UIScreen.main.bounds
    let screenWidth:CGFloat = screenRect.size.width
    let scalefactor:CGFloat = screenWidth / 375.0
    self.font = UIFont(name: (self.font?.fontName)!, size: (self.font.pointSize)*scalefactor)
    }
    
    func setupCustomFont(fnt:UIFont) {
        let screenRect:CGRect = UIScreen.main.bounds
        let screenWidth:CGFloat = screenRect.size.width
        let scalefactor:CGFloat = screenWidth / 375.0
        self.font = UIFont(name: (fnt.fontName), size: (fnt.pointSize)*scalefactor)
    }
    
}

