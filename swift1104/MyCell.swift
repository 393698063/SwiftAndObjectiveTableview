//
//  MyCell.swift
//  swift1104
//
//  Created by Jorgon on 2016/11/4.
//  Copyright © 2016年 Jorgon. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

  @IBOutlet weak var iTitleLabel: UILabel!
  @IBOutlet weak var iOrderLabel: UILabel!
  
   func customCell(tableView:UITableView) -> MyCell {
    
    
    var cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")
    if cell == nil{
      
      cell = Bundle.main.loadNibNamed("MyCell", owner: nil, options: nil)?.last as! MyCell?
    }
    
    return cell as! MyCell
  }
  
  func loadData(line:Int,title:String) {
    iOrderLabel.text =  String(line)
    iTitleLabel.text = title
  }
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      self.backgroundColor = UIColor.init(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}




