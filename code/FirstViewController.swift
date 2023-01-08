//
//  FirstViewController.swift
//  setiing
//
//  Created by Mac on 07/01/23.
//

import UIKit

class FirstViewController: UIViewController {
    
    let tableView = UITableView()
    let cel: [Cell] = [
    Cell(image: "airplane.circle.fill", label: "Airplane Mode"),
    Cell(image: "wifi", label: "WI-FI"),
    Cell(image: "cellularbars", label: "Bluetooth"),
    Cell(image: "antenna.radiowaves.left.and.right", label: "Cellular"),
    Cell(image: "personalhotspot", label: "Personal Hotspot"),
    Cell(image: "shuffle", label: "VPN"),
    Cell(image: "bell.badge.fill", label: "Notifications"),
    Cell(image: "speaker.wave.2.circle.fill", label: "Sound & Haptics"),
    Cell(image: "moon.circle.fill", label: "Focus"),
    Cell(image: "hourglass", label: "Screen Time"),
    Cell(image: "gear.circle.fill", label: "General"),
    Cell(image: "capsule.lefthalf.filled", label: "Control Center"),
    Cell(image: "a.square.fill", label: "Display & Brightness"),
    Cell(image: "circle.grid.3x3.circle.fill", label: "Home Screen"),
    Cell(image: "figure.wave.circle", label: "Accessibility"),
    Cell(image: "snowflake.circle", label: "Wallpaper"),
    Cell(image: "magnifyingglass", label: "Siri & Search"),
    Cell(image: "faceid", label: "Face ID & Passcode"),
    Cell(image: "sos.circle", label: "Emergency SOS"),
    Cell(image: "sun.min.fill", label: "Exposure Notifications"),
    Cell(image: "battery.100", label: "Battery"),
    Cell(image: "hand.raised.square.fill", label: "Privacy & Security")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        title = "Setiing"
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(Header.self, forHeaderFooterViewReuseIdentifier: "header")
        
    }

}
    
extension FirstViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header  = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header")
        return header
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        21
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.image.image = UIImage(systemName: cel[indexPath.row].image)
        cell.label.text = cel[indexPath.row].label
        return cell
    }
}
