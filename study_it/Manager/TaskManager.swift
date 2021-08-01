//
//  TaskManager.swift
//  study_it
//
//  Created by Justin Chung on 2021/08/01.
//

import Foundation

class TaskManager {
    static let shared = TaskManager()
    
    var tasks: [Task] = [Task(title: "Newtons Law", subject: "Physics", startDate: Date(), plannedTime: TimeInterval(3600), isTaskFinished: false), Task(title: "Read 1991", subject: "English 11", startDate: Date(), plannedTime: TimeInterval(7200), isTaskFinished: false), Task(title: "Test", subject: "Test", startDate: Date(), plannedTime: TimeInterval(60), isTaskFinished: false)]
    
    func addTask(newTask: Task) {
        self.tasks.append(newTask)
    }
}
