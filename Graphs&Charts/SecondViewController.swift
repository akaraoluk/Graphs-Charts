//
//  SecondViewController.swift
//  Graphs&Charts
//
//  Created by Abdurrahman Karaoluk on 11.06.2024.
//

import UIKit
import DGCharts

class SecondViewController: UIViewController, ChartViewDelegate {

    var lineChartView: LineChartView!

        override func viewDidLoad() {
            super.viewDidLoad()
            
            // LineChartView oluşturun
            lineChartView = LineChartView()
            lineChartView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(lineChartView)
            
            // LineChartView Auto Layout kısıtlamalarını ayarlayın
            NSLayoutConstraint.activate([
                lineChartView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
                lineChartView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
                lineChartView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
                lineChartView.heightAnchor.constraint(equalToConstant: 120)
            ])
            
            // Chart verilerini oluşturun
            let dataEntries: [ChartDataEntry] = [
                ChartDataEntry(x: 0.0, y: 0.0),
                ChartDataEntry(x: 5.0, y: 0.0),
                ChartDataEntry(x: 8.0, y: -10.0),
                ChartDataEntry(x: 10.0, y: -10.0),
                ChartDataEntry(x: 12.0, y: 0.0),
                ChartDataEntry(x: 16.0, y: 0.0)
            ]
            
            let lineChartDataSet = LineChartDataSet(entries: dataEntries, label: "Data Points")
            let lineChartData = LineChartData(dataSet: lineChartDataSet)
            
            lineChartView.data = lineChartData
            
            // LineChartView özelliklerini ayarlayın
            lineChartView.chartDescription.text = "Line Chart Example"
            lineChartDataSet.colors = [NSUIColor.blue]
            lineChartDataSet.circleColors = [NSUIColor.red]
            lineChartDataSet.circleRadius = 5.0
            lineChartDataSet.circleHoleRadius = 2.5
            lineChartDataSet.lineWidth = 2.0
            lineChartDataSet.valueColors = [NSUIColor.black]
            
            // X ve Y eksenlerini özelleştirin
            lineChartView.xAxis.labelPosition = .bottom
            lineChartView.xAxis.drawGridLinesEnabled = false
            lineChartView.rightAxis.enabled = false
            lineChartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0)
        }
    }
