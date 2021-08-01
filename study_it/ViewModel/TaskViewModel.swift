//
//  TaskViewModel.swift
//  study_it
//
//  Created by Justin Chung on 2021/07/11.
//

import Foundation

class TaskViewModel {
    var tasks: [Task] = [Task(title: "Newtons Law", subject: "Physics", startDate: Date(), plannedTime: TimeInterval(3600), isTaskFinished: false), Task(title: "Read 1991", subject: "English 11", startDate: Date(), plannedTime: TimeInterval(7200), isTaskFinished: false), Task(title: "Test", subject: "Test", startDate: Date(), plannedTime: TimeInterval(60), isTaskFinished: false)]
    
    func getTasksFromDisk() -> [Task] {
        // TODO: Disk에 저장된 유저 Task 목록 불러오기
        return self.tasks
    }
}
