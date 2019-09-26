//
//  TransactionTableViewCell.swift
//  LearningApp
//
//  Created by Shivam on 26/09/19.
//  Copyright © 2019 Shivam. All rights reserved.
//

import UIKit

class TransactionTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: CustomLabel!
    @IBOutlet weak var amountLabel: CustomLabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func configureCell(index:Int,data:TransactionViewData){
        switch index {
        case 1:
            titleLabel.text = "Total Number of Transaction"
            amountLabel.text = data.totalNumberOfTransaction
        case 2:
            titleLabel.text = "Highest Value Transaction"
            amountLabel.text = data.highestvalueOfTransaction
        case 3:
            titleLabel.text = "Total money saved"
            amountLabel.text = data.totalMoneySaved
        default:
            break
        }
    }
    
}
