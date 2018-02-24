//
//  ViewController.swift
//  SimpleTable
//
//  Created by Ravi on 17/06/15.
//  Copyright (c) 2015 AppTuitions. All rights reserved.
//



import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var tableData: [String] = ["Christ Redeemer", "Great Wall of China", "Machu Picchu","Petra","Pyramid at Chichén Itzá","Roman Colosseum","Taj Mahal"]
    var arrImageName: [String] = ["ChristRedeemer", "GreatWallOfChina", "MachuPicchu","Petra","PyramidChichenItza","RomanColosseum","TajMahal"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return self.tableData.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        var cell:CustomTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
        
        cell.imageVW.image = UIImage(named:self.arrImageName[indexPath.row])
     
        cell.lblName.text = self.tableData[indexPath.row]
        
        return cell
    }

 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

