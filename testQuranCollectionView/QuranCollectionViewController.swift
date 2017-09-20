//
//  QuranCollectionViewController.swift
//  testQuranCollectionView
//
//  Created by Safeen Azad on 9/19/17.
//  Copyright © 2017 SafeenAzad. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"




class QuranCollectionViewController: UICollectionViewController {
    
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    var listOfImages = [UIImage]()
    
    
    override var prefersStatusBarHidden: Bool {
        if self.navigationController?.isNavigationBarHidden == true {
            return true
        }else {
            return false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //collectionView?.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        
        navigationController?.hidesBarsOnTap = true
        
        
        
        
        listOfImages.append(UIImage(named: "page001.png")!)
        listOfImages.append(UIImage(named: "page002.png")!)
        listOfImages.append(UIImage(named: "page003.png")!)
        listOfImages.append(UIImage(named: "page004.png")!)
        listOfImages.append(UIImage(named: "page005.png")!)
        listOfImages.append(UIImage(named: "page006.png")!)
        listOfImages.append(UIImage(named: "page007.png")!)
        listOfImages.append(UIImage(named: "page008.png")!)
        listOfImages.append(UIImage(named: "page009.png")!)
        
        
        // Flow Layout
        let space:CGFloat = 3.0
        let dimension = view.frame.size.width
        let heightDimension = view.frame.size.height
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: dimension, height: heightDimension)
        
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */
    
    
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return listOfImages.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! QuranCollectionViewCell
        
        //cell.transform = CGAffineTransform(scaleX: -1.0, y: 1.0)
        
        
        
        cell.image?.image =  listOfImages[indexPath.row]
        
        // Configure the cell
        
        return cell
    }
    
    
}
