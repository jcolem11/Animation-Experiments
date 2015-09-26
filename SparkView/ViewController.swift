//
//  ViewController.swift
//  SparkView
//
//  Created by Owner on 9/2/15.
//  Copyright © 2015 Josh Coleman. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var colorField: UITextField!
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var widthField: UITextField!
    var sparkView:SparkView = SparkView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let center = CGPointMake(CGRectGetMidX(self.view.frame) - 50, CGRectGetMidY(self.view.frame) - 50)
        self.sparkView = SparkView(frame: CGRectMake(0, 0, 150, 150))
        self.sparkView.center = center
        self.view.addSubview(self.sparkView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAnimation(sender: AnyObject) {
        self.sparkView.sparkLayer.expand()
    }
    
    @IBAction func changeLayerValues(sender: AnyObject) {
        if(count(self.colorField.text) > 0){
            self.sparkView.sparkLayer.lineColor = UIColor(rgba: self.colorField.text)
            
        }
        if(count(self.numberField.text) > 0){
            self.sparkView.sparkLayer.lineCount = self.numberField.text.toInt()!
            
        }
        if(count(self.widthField.text) > 0){
            self.sparkView.sparkLayer.lineWidth = self.widthField.text.toInt()!
            
        }
    }

    func textFieldDidEndEditing(textField: UITextField) {
  
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

