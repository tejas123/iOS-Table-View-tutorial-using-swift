//
//  ViewController.swift
//  Sample1
//
//  Created by TheAppGuruz-New-6 on 10/07/14.
//  Copyright (c) 2014 TheAppGuruz-New-6. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var car = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg"]
    var carName = ["Lamborghini", "Drift", "Ferrari", "Hyundai","Mercedes Benz","Mitsubishi","Nissan","Volkswagen"]
    
    @IBOutlet var tvCars : UITableView?
    override func viewDidLoad()
    {
        super.viewDidLoad()
        if UIScreen.mainScreen().bounds.size.height>768
        {
            tvCars?.rowHeight=100;
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //tableview delegate
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        //make sure you use the relevant array sizes
        return car.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell : SampleTableViewCell! = tableView.dequeueReusableCellWithIdentifier("Cell") as! SampleTableViewCell
        if(cell == nil)
        {
            cell = NSBundle.mainBundle().loadNibNamed("Cell", owner: self, options: nil)[0] as! SampleTableViewCell;
        }
        let stringTitle = carName[indexPath.row] as! String //NOT NSString
        let strCarName = car[indexPath.row] as String
        cell.lblTitle.text=stringTitle
        cell.ivPhoto.image = UIImage(named: strCarName)
        return cell as SampleTableViewCell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "DetailSegue"
        {
            let detailViewController = ((segue.destinationViewController) as DetailViewController)
            let indexPath = self.tvCars!.indexPathForSelectedRow()!
            let strImageName = car[indexPath.row]
            detailViewController.strImageName = strImageName
            detailViewController.title = strImageName
        }
    }
    
}

