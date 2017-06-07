//
//  MainView.swift
//  AnswerBall
//
//  Created by akhil mantha on 11/04/17.
//  Copyright © 2017 akhil mantha. All rights reserved.
//

import UIKit

class MainView: UIViewController{
    
    var model : AnswerBallModel = AnswerBallModel()
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Ask a Question!"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func getAnswerTapped(sender: AnyObject) {
        
        //Get a random number from the array count
        let random = Int(arc4random_uniform(UInt32(model.answers.count)))
        
        //Display the answer
        
        label.text = model.answers[random]
        
        
        //Play the sound
        do{
            try model.playSound("Shakesound", fileExtension: "wav")
        }catch {
            return
        }
        
    }
    
    override func motionBegan(motion: UIEventSubtype, withEvent event: UIEvent?) {
        getAnswerTapped(self)
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
