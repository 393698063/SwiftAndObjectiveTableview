//
//  ViewController.swift
//  swift1104
//
//  Created by Jorgon on 2016/11/4.
//  Copyright © 2016年 Jorgon. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{

		
  let a = "a".testExtension
  let b = 3.repetitions {
    print("aa")
  }
  let tableView = UITableView(frame:CGRect(x:0,y:0,width:UIScreen.main.bounds.size.width,
                                           height:UIScreen.main.bounds.size.height) ,
                              style: UITableViewStyle.plain)
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
    tableView.backgroundColor = UIColor.clear
    self.view.addSubview(tableView)
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 20
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = MyCell().customCell(tableView: tableView)
  cell.loadData(line: indexPath.row, title: "title" + String(indexPath.row))
    print(Unmanaged.passUnretained(cell).toOpaque());
    return cell;
  }
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let oc = OCViewController()
    self.navigationController?.pushViewController(oc, animated: true)
  }
  func provide(person:String) -> String {
    return "hello"
  }
  
  func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
  }
  
  func swapTwoValue<T>(_ a: inout T, _ b: inout T) {
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

