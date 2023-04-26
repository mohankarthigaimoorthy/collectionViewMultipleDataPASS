//
//  ViewController.swift
//  dataPassCollectionView
//
//  Created by Mohan K on 13/02/23.
//

import UIKit

class ViewController: UIViewController {
    var imageArr = ["ajith", "vikijay", "vijay", "anbar", "madaswamy", "mani", "john", "farik", "palani", "paneer", "panimalar", "prabhu", "pavithran", "iniyava", "jack", "devil", "devanbu","bunny", "vatsan", "ursulla", "jimmy", "jaga", "jenith", "jayam", "gautham"]
    
    
    @IBOutlet weak var cell1CollectionView: UICollectionView!
    @IBOutlet weak var cell2CollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        performence()
        // Do any additional setup after loading the view.
    }
    func performence() {
        cell1CollectionView.delegate = self
        cell1CollectionView.dataSource = self
        
        cell2CollectionView.delegate = self
        cell2CollectionView.dataSource = self
        
    }
}

extension ViewController:   UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cell1CollectionView {
            return imageArr.count
        }
        return imageArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cell1CollectionView {
            let cellA = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! cell
            cellA.imageA.image = UIImage(named:imageArr[indexPath.item])
            cellA.labelA.text = imageArr[indexPath.item]
            
        return cellA
        }
        else {
            let cellB = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! cell
            cellB.imageB.image = UIImage(named: imageArr[indexPath.item])
            cellB.labelB.text = imageArr[indexPath.item]
            return cellB
        }
    }
    
    
}
