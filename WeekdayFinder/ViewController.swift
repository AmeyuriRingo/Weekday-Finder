//
//  ViewController.swift
//  WeekdayFinder
//
//  Created by Ringo_02 on 10/14/18.
//  Copyright © 2018 Ringo_02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DateTF: UITextField!
    @IBOutlet weak var MonthTF: UITextField!
    @IBOutlet weak var YearTF: UITextField!

    @IBOutlet weak var ResultLabel: UILabel!

   
    @IBAction func findWeekDay() {
        
        let caledndar = Calendar.current
        
        var dateComponents = DateComponents()
        guard let day = DateTF.text, let month = MonthTF.text, let year = YearTF.text else { return }
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)

        guard let  date = caledndar.date(from: dateComponents) else { return }
        
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "EEEE"
        
        let weekday = dateFormater.string(from: date)
        
        ResultLabel.text = weekday
    }
    
    let caledndar = Calendar.current
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true )
    }
}

