//
//  MainViewController.swift
//  Emoji game-v2
//
//  Created by Leon Grinshpun on 28/05/2021.
//

import UIKit

class MainViewController: UIViewController {
    
    private var newProgramVar: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func main_easyMode_btn_click(_ sender: Any) {
        newProgramVar = "EasyMode"
    }
    
    @IBAction func main_hardMode_btn_click(_ sender: Any) {
        newProgramVar = "HardMode"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PlayGame"{
            let destinationVC = segue.destination as! GameViewController
            destinationVC.receivedData = newProgramVar
        }else{
            _ = segue.destination as! TopTenViewController
        }
    }
}
