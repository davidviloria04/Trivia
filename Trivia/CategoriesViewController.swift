//
//  CategoriesViewController.swift
//  Trivia
//
//  Created by David Viloria Ortega on 1/11/21.
//

import UIKit

class CategoriesViewController: UIViewController {
   
    private var categories = ["Primer Categoria", "Segunda Categoria"]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        getCategories()

    }
    
    func getCategories(){
        self.tableView.reloadData()
    }
}


extension CategoriesViewController: UITableViewDataSource,  UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
<<<<<<< HEAD
=======
        
>>>>>>> master
        cell.textLabel?.text = categories[indexPath.row]
        return cell
    }
}
