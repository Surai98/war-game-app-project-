//
//  ViewController.swift
//  warapp1
//
//  Created by Celine Surai on 1/3/19.
//  Copyright © 2019 Celine Surai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var LeftImageView: UIImageView!
    
    @IBOutlet weak var rightimageview: UIImageView!
    
    @IBOutlet weak var leftscorelabel: UILabel!
    
    
    @IBOutlet weak var rightscorelabel: UILabel!
    
    var rightscore = 0
    var leftscore  = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
    
    
    }

    
    @IBAction func dealtapped(_ sender: Any){
        //Randomize numbers
       let leftRandomNumber = arc4random_uniform(13) + 2
       // print("left random number is: \(leftRandomNumber)")
       let rightrandomnumber = arc4random_uniform(13) + 2
        //print("right number is : \(rightrandomnumber)")
        // Change image views
       LeftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        rightimageview.image = UIImage(named: "card\(rightrandomnumber)")
   
    //compare numbers
        if leftRandomNumber > rightrandomnumber {
            // update the score
            leftscore += 1
            //updatethelabel
            leftscorelabel.text = String(leftscore)
        }
        else if rightrandomnumber > leftRandomNumber {
            //update the score
            rightscore += 1
            
            //updatethe label
            rightscorelabel.text = String(rightscore)
        }
        
        else if leftRandomNumber == rightrandomnumber {
            
        }
    }
    
   

}

