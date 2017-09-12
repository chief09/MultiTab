//
//  ForthViewController.swift
//  MultiTab
//
//  Created by Cyberjaya 17 iTrain on 12/09/2017.
//  Copyright © 2017 Newera. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let hero = ["Spiderman", "Captain America", "Hulk", "Black Widow", "Hawkeye"]
    let weapon = ["sword","pistol","gun","arrow and bow"]
    
    @IBOutlet var picker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
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
    @IBAction func actionPressed(_ sender: Any) {
        
        let alertCtrl = UIAlertController(title: "Picker", message: "Hello, this is \(hero[picker.selectedRow(inComponent: 0)]) and \(weapon[picker.selectedRow(inComponent: 1)])", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertCtrl.addAction(ok)
        present(alertCtrl, animated: true, completion: nil)
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return hero.count
        }
        else {
            return weapon.count
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return hero[row]
        }
        else {
            return weapon[row]
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
}
