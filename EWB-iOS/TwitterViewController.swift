//
//  TwitterViewController.swift
//  EWB-iOS
//
//  Created by Karanraj on 11/2/16.
//
//

import UIKit
import TwitterKit

class TwitterViewController: TWTRTimelineViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0)
        //Display tweets from EWBBU
        let client = TWTRAPIClient()
        self.dataSource = TWTRUserTimelineDataSource(screenName: "EWBBU", apiClient: client)
        
        //Setting appearance of Twitter page
//        TWTRTweetView.appearance().backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
//        TWTRTweetView.appearance().primaryTextColor = UIColor.white
//        TWTRTweetView.appearance().clipsToBounds = true
//        TWTRTweetView.appearance().linkTextColor = UIColor.blue
//        TWTRTweetView.appearance().tintColor = UIColor.brown
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
