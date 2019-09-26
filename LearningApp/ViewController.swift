//
//  ViewController.swift
//  LearningApp
//
//  Created by Shivam on 26/09/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var dataModel = TransactionViewData()
    
    //MARK:-  Lazy var declarations
    lazy var headerView: GoodByeScreenHeader = {
        let headerView = GoodByeScreenHeader()
        return headerView
    }()
    
    
    //MARK:-  life cycle method
    override func viewDidLoad() {
        super.viewDidLoad()
        createViewData()
        registerCell()
        // Do any additional setup after loading the view.
    }
    
    //MARK:-  Initial view method
    func registerCell(){
        CommonClassFunc.sharedInstance.registerCell(tbl: tableView, nibName: "GoodByeScreenHeader")
        CommonClassFunc.sharedInstance.registerCell(tbl: tableView, nibName: "SectionHeaderCell")
        CommonClassFunc.sharedInstance.registerCell(tbl: tableView, nibName: "TransactionTableViewCell")
    }
    
    
    func createViewData(){
        dataModel.countryName = "Russia"
        dataModel.highestvalueOfTransaction = "Rs 1200.0"
        dataModel.totalMoneySaved = "Rs 1300.0"
        dataModel.totalNumberOfTransaction = "24"
    }
     
}


