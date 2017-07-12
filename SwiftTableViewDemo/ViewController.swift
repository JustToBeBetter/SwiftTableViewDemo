//
//  ViewController.swift
//  SwiftTableViewDemo
//
//  Created by 李金柱 on 15/9/29.
//  Copyright (c) 2015年 李金柱. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    var _dataArray : NSMutableArray?
    var i = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height))
        
        tableView.delegate = self;
        tableView.dataSource = self;
        
        self.view.addSubview(tableView)
        _dataArray = NSMutableArray()
        
        for i in 0 ... 10
        {
        _dataArray!.add(i)
            
        }
    
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _dataArray!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cellid")
        
        if (cell == nil){
            cell = UITableViewCell(style:.default, reuseIdentifier: "cellid")
            i += 1
           print("创建了个\(i)个cell")
         
        }
        
        cell?.textLabel!.text = "\(indexPath.row)"
        
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("您点击了\(indexPath.row)个cell")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

