//
//  DetailViewControlller.swift
//  SimpsonBook
//
//  Created by Abdullah Oğuz on 9.01.2021.
//

import UIKit

class DetailViewControlller: UIViewController {

    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
  
    
    var selectedSimpson : Simpson?
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        jobLabel.text = selectedSimpson?.job
        nameLabel.text = selectedSimpson?.name
        imageView.image = selectedSimpson?.image
        
        
        // Do any additional setup after loading the view.
        
        
        
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
