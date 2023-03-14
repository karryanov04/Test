//
//  TableViewController.swift
//  Test
//
//  Created by Рауль on 14/3/23.
//

import UIKit

class TableViewController: UIViewController {

    private var person: [Person] = []
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TableView.dataSource = self
        initData()
    }
    private func initData() {
        person = [Person(name: "Raul", phoneNumber: "+996999022766", image: "1"),
                  Person(name: "Bektur", phoneNumber: "+996706280304", image: "1"),
                  Person(name: "Erzhan", phoneNumber: "+996706280304", image: "1"),
                  Person(name: "Ahmed", phoneNumber: "+996706280304", image: "1"),
                  Person(name: "Tima", phoneNumber: "+996706280304", image: "1"),
                  Person(name: "Islam", phoneNumber: "+996706280304", image: "1")]
        
        
    }
}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = person[indexPath.row].name
        cell.detailTextLabel?.text = person[indexPath.row].phoneNumber
        cell.imageView?.image = UIImage(named: person[indexPath.row].image)
        
        return cell
    }
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    
}

    struct Person {
            var name: String
            var phoneNumber: String
            var image: String
        }
