//
//  ViewControllerDetails.swift
//  Table
//
//  Created by Camille Castillo on 04/02/2016.
//  Copyright © 2016 Camille Castillo. All rights reserved.
//

import UIKit

class ViewControllerDetails: UIViewController {

    @IBOutlet weak var nomLabel: UILabel!
    @IBOutlet weak var adresseLabel: UILabel!
    @IBOutlet weak var statutLabel: UILabel!
    
    var detailInfos:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nomLabel.text = detailInfos[0]
        adresseLabel.text = detailInfos[1]
        statutLabel.text = detailInfos[2]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
