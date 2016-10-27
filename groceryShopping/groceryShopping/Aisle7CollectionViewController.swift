//
//  Aisle7CollectionViewController.swift
//  groceryShopping
//
//  Created by Jacqueline Minneman on 10/16/16.
//  Copyright © 2016 Jacqueline Minneman. All rights reserved.
//

import UIKit


class Aisle7CollectionViewController: UICollectionViewController {
    
    var cereals = [Cereals]()
    
    @IBOutlet var aisle7Shelves: UICollectionView!
     
    func generateCereals(){
        let cheerios = Cereals(name: "Cheerios", box: #imageLiteral(resourceName: "cheerios"))
        let capnCrunch = Cereals(name: "Cap'n Crunch", box: #imageLiteral(resourceName: "capn crunch"))
        let luckyCharms = Cereals(name: "Lucky Charms", box: #imageLiteral(resourceName: "lucky charms"))
        let kix = Cereals(name: "Kix", box: #imageLiteral(resourceName: "kix"))
        let riceKrispies = Cereals(name: "Rice Krispies", box: #imageLiteral(resourceName: "Rice Krispies"))
        let wheaties = Cereals(name: "Wheaties", box: #imageLiteral(resourceName: "Wheaties"))
        
        cereals = [cheerios, capnCrunch, luckyCharms, kix, riceKrispies, wheaties]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        generateCereals()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cereals.count
       
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cerealBox", for: indexPath) as! Aisle7CollectionViewCell
        cell.cerealLabel.text = cereals[indexPath.item].name
        cell.cerealImage.image = cereals[indexPath.item].box
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveCereal" {
            if let newLocation = segue.destination as? EndCapViewController {
                if let originalLocationNumber = aisle7Shelves.indexPathsForSelectedItems?.first?.item {
                    newLocation.signageText = cereals[originalLocationNumber].name
                    newLocation.cerealBox = cereals[originalLocationNumber].box
                }
            }
        }
    }

}
