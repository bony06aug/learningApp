//
//  GoodByeScreenHeader.Swift
//  LearningApp
//
//  Created by Shivam on 26/09/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit




class GoodByeScreenHeader: UIView {
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    func instanceFromNib() -> UIView{
        let xib : NSArray = Bundle.main.loadNibNamed("GoodByeScreenHeader", owner: self, options: nil)! as NSArray
        return xib.object(at: 0) as! UIView
    }
    
}

