//
//  AddTaskViewController.swift
//  study_it
//
//  Created by Justin Chung on 2021/07/11.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var subjectTextField: UITextField!
    @IBOutlet weak var studyTimeTextField: UITextField!
    
    static func instance() -> AddTaskViewController? {
        let storyboard = UIStoryboard(name: "AddTaskView", bundle: nil)
        
        return storyboard.instantiateViewController(withIdentifier: "AddTaskView") as? AddTaskViewController
    }
    
    @IBAction func addTaskDone(_ sender: Any) {
        guard let title = self.titleTextField.text,
              let subject = self.subjectTextField.text,
              let _ = self.studyTimeTextField.text else {
            let alert = UIAlertController(title: "Error", message: "Fill in TextField", preferredStyle: .alert)
            
            self.present(alert, animated: true, completion: nil)
            return
        }
        
        let task = Task(title: title, subject: subject, startDate: Date(), plannedTime: 0, isTaskFinished: false)
        TaskManager.shared.addTask(newTask: task)
        
        self.navigationController?.popViewController(animated: true)
    }
}
