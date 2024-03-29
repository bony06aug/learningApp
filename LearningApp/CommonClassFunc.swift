//
//  CommonClassFunc.swift
//  LearningApp
//
//  Created by Shivam on 26/09/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import Foundation
import UIKit

let screenScaleFactor : CGFloat = UIScreen.main.bounds.size.width / 375.0

class CommonClassFunc: NSObject {
    
    static let sharedInstance: CommonClassFunc = {
        let instance = CommonClassFunc()
        return instance
    }()
    
    
    func registerCell(tbl:UITableView,nibName:String){
        tbl.register(UINib(nibName:nibName, bundle:nil), forCellReuseIdentifier:nibName)
    }
    
}




//MARK:Device Types & Size
struct ScreenSize{
    static let SCREEN_WIDTH         = UIScreen.main.bounds.size.width
    static let SCREEN_HEIGHT        = UIScreen.main.bounds.size.height
    static let SCREEN_MAX_LENGTH    = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    static let SCREEN_MIN_LENGTH    = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
}

struct DeviceType{
    static let IS_IPHONE_4_OR_LESS  = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH < 568.0
    static let IS_IPHONE_5          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 568.0
    static let IS_IPHONE_6          = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 667.0
    static let IS_IPHONE_6P         = UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.SCREEN_MAX_LENGTH == 736.0
    static let IS_IPAD              = UIDevice.current.userInterfaceIdiom == .pad
    static let IS_IPHONE            = UIDevice.current.userInterfaceIdiom == .phone
}
