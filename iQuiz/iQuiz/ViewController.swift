//
//  ViewController.swift
//  iQuiz
//
//  Created by Chris Maglio on 5/3/16.
//  Copyright © 2016 Chris Maglio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var setting: UIBarButtonItem!
    @IBAction func showAlert(sender: AnyObject) {
        let alert : UIAlertController = UIAlertController(title: "Alert", message: "Settings go here", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        self.presentViewController(alert, animated : false, completion : nil)
        
    }
    
    @IBOutlet weak var QuizTable: UITableView!
    
    var topics = ["Math", "Marvel", "Science"]
    var images = [UIImage(named : "1"), UIImage(named : "2"), UIImage(named : "3")]
    var descriptions = ["This is a quiz about math becuase math is so fun", "Quiz yourself on you favorite marvel characters", "Science kinda sucks, but take this quiz anyaway"]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return topics.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.QuizTable.dequeueReusableCellWithIdentifier("QuizCell", forIndexPath: indexPath) as! TableViewCell
        
        cell.thumbImage.image = images[indexPath.row]
        cell.title.text = topics[indexPath.row]
        cell.topicDescription.text = descriptions[indexPath.row]
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        QuizTable.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

