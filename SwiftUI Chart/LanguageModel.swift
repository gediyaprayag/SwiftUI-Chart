//
//  LanguageModel.swift
//  SwiftUI Chart
//
//  Created by Prayag Gediya on 02/03/23.
//

import Foundation
import SwiftUI

enum Language: String, CaseIterable {
    case swift
    case objectiveC
    case java
    case kotlin

    var color: Color {
        switch self {
        case .swift: return Color.blue
        case .objectiveC: return .red
        case .java: return .green
        case .kotlin: return .orange
        }
    }
}

enum Platform: String {
    case iOS
    case android
}

struct LanguageData: Identifiable {
    let id = UUID()
    let year: String
    let language: Language
    let value: Int
}

struct PlatformData: Identifiable {
    let id = UUID()
    let platform: Platform
    let data: [LanguageData]

    static let dataList: [PlatformData] = [
        .init(
            platform: .iOS,
            data: [
                .init(year: "2022", language: .swift, value: 5),
                .init(year: "2022", language: .objectiveC, value: 8)
            ]
        ),
        .init(
            platform: .android,
            data: [
                .init(year: "2022", language: .java, value: 2),
                .init(year: "2022", language: .kotlin, value: 10)
            ]
        ),
        .init(
            platform: .iOS,
            data: [
                .init(year: "2021", language: .swift, value: 5),
                .init(year: "2021", language: .objectiveC, value: 10)
            ]
        ),
        .init(
            platform: .android,
            data: [
                .init(year: "2021", language: .java, value: 3),
                .init(year: "2021", language: .kotlin, value: 6)
            ]
        ),
        .init(
            platform: .iOS,
            data: [
                .init(year: "2020", language: .swift, value: 5),
                .init(year: "2020", language: .objectiveC, value: 12)
            ]
        ),
        .init(
            platform: .android,
            data: [
                .init(year: "2020", language: .java, value: 4),
                .init(year: "2020", language: .kotlin, value: 4)
            ]
        ),
        .init(
            platform: .iOS,
            data: [
                .init(year: "2019", language: .swift, value: 8),
                .init(year: "2019", language: .objectiveC, value: 4)
            ]
        ),
        .init(
            platform: .android,
            data: [
                .init(year: "2019", language: .java, value: 9),
                .init(year: "2019", language: .kotlin, value: 3)
            ]
        )
    ]
}


