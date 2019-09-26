//
//  ViewController_TableViewExtenion.swift
//  LearningApp
//
//  Created by Shivam on 26/09/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import Foundation
import UIKit

//MARK:-  extension table view
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        switch index {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SectionHeaderCell", for: indexPath) as! SectionHeaderCell
            return cell
        case 1,2,3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionTableViewCell", for: indexPath) as!  TransactionTableViewCell
            cell.configureCell(index: index, data: dataModel)
            return cell
        default:
            let cell : UITableViewCell = UITableViewCell.init(style: .default, reuseIdentifier: "cell")
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 70.0
        }else{
            return 40.0
        }
    }
    
}
