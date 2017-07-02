//
//  ViewController.swift
//  ClickablePickerViewExemple
//
//  Created by admin on 02/07/2017.
//  Copyright © 2017 quentin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickablePickerView: ClickablePickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clickablePickerView.delegate = self
        clickablePickerView.dataSource = self
        clickablePickerView.didSelectAction = { [weak self] in
            print("did select row ", self?.clickablePickerView.selectedRow(inComponent: 0) ?? "no self? ?")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

//************************************
// MARK: - picker view D/D
//************************************

extension ViewController:UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 8
    }
    
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        
        let label = view as? UILabel == nil ? UILabel() : view as! UILabel
        /** Uncomment to change picker font
        label.font = UIFont(name: "Chalk", size: 15)
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        */
        if row == 0 {
            label.text = "tomorow"
        }
        else {
            let formater = DateFormatter()
            formater.dateFormat = "MM-dd"
            let date = Date().addingTimeInterval(Double(row+1) * 24 * 3600)
            let dateString = DateFormatter.localizedString(from: date, dateStyle: .medium, timeStyle: .none)
            
            label.text = dateString
        }
        
        label.textAlignment = .center
        
        return label
        
    }
 
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 36
    }
    
    
    
    
    
}


