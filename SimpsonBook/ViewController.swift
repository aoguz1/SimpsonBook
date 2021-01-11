//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Abdullah Oğuz on 9.01.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var simpsonFamily = [Simpson]()
    var chosenSimpson : Simpson?
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
        
        let homer = Simpson(nameInit: "Homer Simpson", jobInit: "Nuclear Technician", imageInit: UIImage(named: "homer")!)
        let bart = Simpson(nameInit: "Bart Simpson", jobInit: "Student", imageInit: UIImage(named: "bart")!)
        let lisa =  Simpson(nameInit: "Lisa Simpson", jobInit: "Student", imageInit: UIImage(named: "lisa")!)
        let marge = Simpson(nameInit: "Marge Simpson", jobInit: "Housewife", imageInit: UIImage(named: "marge")!)
        
        let simpsonArray = [homer,bart,lisa,marge]
        
        for simpson in simpsonArray {
            simpsonFamily.append(simpson)
        }
      
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonFamily.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonFamily[indexPath.row].name
        return cell
    }
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = simpsonFamily[indexPath.row]
        
        chosenSimpson?.image = simpsonFamily[indexPath.row].image
        chosenSimpson?.name = simpsonFamily[indexPath.row].name
        chosenSimpson?.job = simpsonFamily[indexPath.row].job
        
        performSegue(withIdentifier: "toDetailVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destinationVC =  segue.destination as? DetailViewControlller
            destinationVC?.selectedSimpson = chosenSimpson
        }
    }
    
    

}

