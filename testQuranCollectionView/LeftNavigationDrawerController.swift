//
//  LeftNavigationDrawerController.swift
//  testQuranCollectionView
//
//  Created by Safeen Azad on 9/24/17.
//  Copyright © 2017 SafeenAzad. All rights reserved.
//

import UIKit
import Material

class LeftNavigationDrawerController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    var categories = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
        
        categories = ["Search", "Quran", "Maqamat", "Bookmarks"]
    }
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let Cell = self.table.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        
        Cell.textLabel?.text = categories[indexPath.row]
        
        return Cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = storyboard?.instantiateViewController(withIdentifier: "QuranCollectionViewController") as! QuranCollectionViewController
        
        present(cell, animated: true, completion: nil)
        
    }

}
