//
//  ViewController.swift
//  Trip Book
//
//  Created by Yagmur on 19.07.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var data: [TripData] = create()
    var choosenHeader = ""
    var choosenImage = UIImage()
    var choosenArticle = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = data[indexPath.row].title
        cell.contentConfiguration = content
        //cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenHeader = data[indexPath.row].title
        choosenImage = data[indexPath.row].image!
        choosenArticle = data[indexPath.row].article
        performSegue(withIdentifier: "toDetailsCV", sender: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsCV"
        {
            let destinationVC = segue.destination as! DetailsController
            destinationVC.selectedHeader = choosenHeader
            destinationVC.selectedImage = choosenImage
            destinationVC.selectedArticle = choosenArticle
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            data.remove(at: indexPath.row)
            tableView.reloadData()
           
        }
    }
    
}
