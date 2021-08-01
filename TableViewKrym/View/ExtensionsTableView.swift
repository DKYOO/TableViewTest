//
//  ExtensionsTableView.swift
//  TableViewKrym
//
//  Created by Dmitry Kaveshnikov on 4/12/21.
//

import Foundation
import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (filterDate.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Row", for: indexPath) as! ViewTableViewCell
        cell.nameLabel.text = filterDate[indexPath.row].name
        cell.raitLabel.text = String(filterDate[indexPath.row].grade!)
        cell.genderLabel.text = filterDate[indexPath.row].gender
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        filterDate = []
        if searchText == "" {
            filterDate = students
        } else {
            for student in students {
                if student.name!.lowercased().contains(searchText.lowercased()) {
                    filterDate.append(student)
                }
            }
        }
        let testArray = filterDate.sorted(by: {$0.name!.lowercased() < $1.name!.lowercased()})
        filterDate = testArray
        knigga.reloadData()
    }
}
