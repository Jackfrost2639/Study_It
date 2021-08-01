//
//  Task.swift
//  study_it
//
//  Created by Justin Chung on 2021/07/11.
//

import Foundation

struct Task: Codable, Equatable {
    let title: String
    let subject: String
    let startDate: Date
    let plannedTime: TimeInterval
    let isTaskFinished: Bool
}
