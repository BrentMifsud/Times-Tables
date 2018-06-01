//
//  ViewController.swift
//  Times Table app
//
//  Created by Mifsud, Brent on 2018-05-31.
//  Copyright © 2018 Brent MIfsud. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String(Int(slider.value) * (indexPath.row+1))
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        number.text = String(Int(slider.value))
        
    }

    @IBAction func sliderChanged(_ sender: Any) {
        number.text = String(Int(slider.value))
        table.reloadData()
    }
    @IBOutlet weak var number: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var table: UITableView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

