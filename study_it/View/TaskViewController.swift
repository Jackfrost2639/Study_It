//
//  TaskViewController.swift
//  study_it
//
//  Created by Justin Chung on 2021/04/04.
//

import UIKit

class TaskViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
//    let viewModel: TaskViewModel = TaskViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        guard let navigationItem = self.navigationItem else {
//            return
//        }
//
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.navigationItem.title = "Study It"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tableView.reloadData()
    }
    
    @IBAction func moveToAddTask(_ sender: Any) {
        guard let viewController = AddTaskViewController.instance() else {
            return
        }
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
}

extension TaskViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TaskManager.shared.tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TaskTableViewCell = tableView.dequeueReusableCell(withIdentifier: "TaskTableViewCell", for: indexPath) as! TaskTableViewCell
        
        let task = TaskManager.shared.tasks[indexPath.row]
                                   
        cell.titleLabel.text = task.title
        cell.subjectButton.setTitle(task.subject, for: .normal)
        
        if task.isTaskFinished {
            cell.stateButton.setImage(UIImage(named: "checkmark.circle.fill"), for: .normal)
        }
        else {
            cell.stateButton.setImage(UIImage(named: "checkmark.circle"), for: .normal)
        }
        
        return cell
    }
    
    
}

class TaskTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subjectButton: UIButton!
    @IBOutlet weak var stateButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
