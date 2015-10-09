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
        let tableView = UITableView(frame: CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))
        
        tableView.delegate = self;
        tableView.dataSource = self;
        
        self.view.addSubview(tableView)
        _dataArray = NSMutableArray()
        
        for(var i = 0;  i < 100; i++){
            
            _dataArray!.addObject(i)
            
            
        }
    
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return _dataArray!.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cellid")as?UITableViewCell
        if (cell == nil){
            cell = UITableViewCell(style:.Default, reuseIdentifier: "cellid")
            i++
           println("创建了个\(i)个cell")
         
        }
        
        cell!.textLabel!.text = "\(indexPath.row)"
        
        
        return cell!
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        println("您点击了\(indexPath.row)个cell")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

