//
//  ViewController.swift
//  CollectionViewApp
//
//  Created by user198555 on 7/12/21.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK:IBOulets
    @IBOutlet var collectionView: UICollectionView!
    
    
    var cellColor = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //right click connected visually
//        collectionView.dataSource = self
//        collectionView.delegate = self
        
        
    }

    
    //MARK: IBOActions

}

    //MARK: Extensions

extension  ViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath)
        if cellColor{
            cell.backgroundColor = UIColor.yellow
        } else {
            cell.backgroundColor = UIColor.green
        }
        
        cellColor = !cellColor
        
        return cell
    }
    
    
    
}

