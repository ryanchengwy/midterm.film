//
//  ViewController.swift
//  midterm.film
//
//  Created by Ryan on 25/12/2015.
//  Copyright © 2015 Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputSignatureTextField: UITextField!
    @IBOutlet weak var signature: UIButton!
    @IBOutlet weak var stringSignatureName: UILabel!
    @IBOutlet weak var stringWarning: UILabel!
    var signatureArray = [String]()
    var warningString = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stringSignatureName.text = ""
        stringWarning.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addSignatureButtonPressed(sender: AnyObject) {
        stringWarning.text = ""
        checkBlankInput()
        printSignature()
        inputSignatureTextField.text = ""
        
    }
    func setSignatureName () {
        if signatureArray.count < 3{
        signatureArray.append(inputSignatureTextField.text!)
        } else {
            warningString = "只能簽3筆"
            stringWarning.text = warningString
        }
    }
    func printSignature () {
        switch signatureArray.count {
        case 1 :
            stringSignatureName.text = signatureArray[0]
        case 2 :
            stringSignatureName.text = signatureArray[0] + "\n" + signatureArray[1]
        case 3 :
            stringSignatureName.text = signatureArray[0] + "\n" + signatureArray[1] + "\n" + signatureArray[2]
        default :
            break
        }
    }
    func checkBlankInput () {
        if inputSignatureTextField.text == "" {
            warningString = "名字不能留白"
            stringWarning.text = warningString
        } else {
            setSignatureName()
        }
    }
}

