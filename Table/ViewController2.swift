//
//  ViewController2.swift
//  Table
//
//  Created by Camille Castillo on 19/01/2016.
//  Copyright © 2016 Camille Castillo. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var adresse: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var ImageView2: UIImageView!
    
    var detailInfos:[String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        Label3.text = detailInfos[0]
        adresse.text = detailInfos[1]
        Label4.text = detailInfos[2]
        ImageView2.image = UIImage(named:detailInfos[2])
        
        
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
