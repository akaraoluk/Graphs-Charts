//
//  ThirdViewController.swift
//  Graphs&Charts
//
//  Created by Abdurrahman Karaoluk on 11.06.2024.
//

import UIKit
import DGCharts

class ThirdViewController: UIViewController, ChartViewDelegate {

    var pieChart = PieChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pieChart.delegate = self
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        pieChart.frame = CGRect(x: 0, y: 0,
                                width: self.view.frame.width,
                                height: self.view.frame.height)
        pieChart.center = view.center
        view.addSubview(pieChart)
        
        var entries = [ChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(ChartDataEntry(x: Double(x),
                                             y: Double(x)))
        }
        
        let set = PieChartDataSet(entries: entries)
        
        set.colors = ChartColorTemplates.colorful()
        
        let data = PieChartData(dataSet: set)
        
        pieChart.data = data
    }

}
