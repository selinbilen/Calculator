//
//  ViewController.swift
//  hw01
//
//  Created by selin eylül bilen on 1/7/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var number2: UITextField!
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var isaret: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func toplama(){
        isaret.text = "+"
        let sayı = sayılar()
        let toplam = sayı.num1 + sayı.num2
        result.text = "\(toplam)"
    }
    func cikarma(){
        isaret.text = "-"
        let sayı = sayılar()
        let cikar = sayı.num1 - sayı.num2
        result.text = "\(cikar)"
    }
    func bolme(){
        isaret.text = "÷"
        let sayı = sayılar()
        let  bol = sayı.num1 / sayı.num2
        result.text = "\(bol)"
    }
    func carpma(){
        isaret.text = "x"
        let sayı = sayılar()
        let carp = sayı.num1 * sayı.num2
        result.text = "\(carp)"
    }
    
    func sayılar()-> (num1: Double, num2: Double){
        //isaret.isHidden = true
        if let num1 = Double(number1.text!), let num2 = Double(number2.text!){
            return (num1,num2)
        }
        else{
            print("HATA")
            return (0,0)
        }
        
    }
    @IBAction func toplama_btn(_ sender: UIButton) {
        toplama()
    }
    @IBAction func bolme_btn(_ sender: UIButton) {
        bolme()
    }
    @IBAction func carpma_btn(_ sender: UIButton) {
        carpma()
    }
    @IBAction func cikarma_btn(_ sender: UIButton) {
        cikarma()
    }
}

