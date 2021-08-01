//
//  AddTaskViewController.swift
//  study_it
//
//  Created by Justin Chung on 2021/07/11.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    static func instance() -> AddTaskViewController? {
        let storyboard = UIStoryboard(name: "AddTaskView", bundle: nil)
        
        return storyboard.instantiateViewController(withIdentifier: "AddTaskView") as? AddTaskViewController
    }
    
    @IBAction func addTaskDone(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
