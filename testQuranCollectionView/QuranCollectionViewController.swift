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
        
       
        navigationController?.hidesBarsOnTap = true
        
        collectionView?.semanticContentAttribute = UISemanticContentAttribute.forceRightToLeft
        
//        print(UIImage(named: "page001.png"))
        listOfImages.append(UIImage(named: "width_1280/page001.png")!)
        listOfImages.append(UIImage(named: "width_1280/page002.png")!)
        listOfImages.append(UIImage(named: "width_1280/page003.png")!)
        listOfImages.append(UIImage(named: "width_1280/page004.png")!)
        listOfImages.append(UIImage(named: "width_1280/page005.png")!)
        listOfImages.append(UIImage(named: "width_1280/page006.png")!)
        listOfImages.append(UIImage(named: "width_1280/page007.png")!)
        listOfImages.append(UIImage(named: "width_1280/page008.png")!)
        listOfImages.append(UIImage(named: "width_1280/page009.png")!)
        listOfImages.append(UIImage(named: "width_1280/page010.png")!)
        listOfImages.append(UIImage(named: "width_1280/page011.png")!)
        listOfImages.append(UIImage(named: "width_1280/page012.png")!)
        listOfImages.append(UIImage(named: "width_1280/page013.png")!)
        listOfImages.append(UIImage(named: "width_1280/page014.png")!)
        listOfImages.append(UIImage(named: "width_1280/page015.png")!)
        listOfImages.append(UIImage(named: "width_1280/page016.png")!)
        listOfImages.append(UIImage(named: "width_1280/page017.png")!)
        listOfImages.append(UIImage(named: "width_1280/page018.png")!)
        listOfImages.append(UIImage(named: "width_1280/page019.png")!)
        listOfImages.append(UIImage(named: "width_1280/page020.png")!)
        listOfImages.append(UIImage(named: "width_1280/page021.png")!)
        listOfImages.append(UIImage(named: "width_1280/page022.png")!)
        listOfImages.append(UIImage(named: "width_1280/page023.png")!)
        listOfImages.append(UIImage(named: "width_1280/page024.png")!)
        listOfImages.append(UIImage(named: "width_1280/page025.png")!)
        listOfImages.append(UIImage(named: "width_1280/page026.png")!)
        listOfImages.append(UIImage(named: "width_1280/page027.png")!)
        listOfImages.append(UIImage(named: "width_1280/page028.png")!)
        
        
        
        // Flow Layout
        let space:CGFloat = 0.0
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
        
        
        
        
        cell.image?.image =  listOfImages[indexPath.row]
        
        // Configure the cell
        
        return cell
    }
    
    
}
