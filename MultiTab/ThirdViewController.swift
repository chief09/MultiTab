//
//  ThirdViewController.swift
//  MultiTab
//
//  Created by Cyberjaya 17 iTrain on 12/09/2017.
//  Copyright © 2017 Newera. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ThirdViewController: UIViewController {

    @IBOutlet var dateP: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
       
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionPressed(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        dateFormatter.dateStyle = .short
        dateFormatter.locale = Locale(identifier: "en_GB")
        
        let formattedDate = dateFormatter.string(from: dateP.date)
        let alert = UIAlertController(title: "Hello", message: "Today is \(formattedDate)", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }

}
