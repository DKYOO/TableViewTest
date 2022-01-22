//
//  ViewController.swift
//  TableViewKrym
//
//  Created by Dmitry Kaveshnikov on 4/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var knigga: UITableView!
    @IBOutlet weak var poisk: UISearchBar!
    var students = [Students]()
    var filterDate = [Students]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        poisk.delegate = self
        
        for (key, value) in Datas.dic {
            let dyh = Students(name: key, gender: value, grade: Int.random(in: 1..<5))
            students.append(dyh)
        }
        let testArray = students.sorted(by: {$0.name!.lowercased() < $1.name!.lowercased()})
        students = testArray
        filterDate = students
        // Do any additional setup after loading the view.
    }

}

