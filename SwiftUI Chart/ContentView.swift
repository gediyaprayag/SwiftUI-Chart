//
//  ContentView.swift
//  SwiftUI Chart
//
//  Created by Prayag Gediya on 02/03/23.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        VStack {
            Chart {
                ForEach(PlatformData.dataList) { dDatum in
                    ForEach(dDatum.data) { datum in
                        BarMark(x: .value("value", datum.value), y: .value("year", datum.year))
                            .foregroundStyle(datum.language.color)
                    }
                    .position(by: .value("position", dDatum.platform.rawValue))
                }
            }
            .frame(height: 400)
            .chartYAxis(content: {
                AxisMarks(
                    preset: .aligned,
                    position: .leading,
                    values: PlatformData.dataList.flatMap { $0.data.map { $0.year } }
                )
            })
            .chartForegroundStyleScale([
                Language.swift.rawValue : Language.swift.color,
                Language.objectiveC.rawValue: Language.objectiveC.color,
                Language.java.rawValue: Language.java.color,
                Language.kotlin.rawValue: Language.kotlin.color
            ])
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
