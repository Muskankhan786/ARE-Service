//
//  ViewController.swift
//  ARE Services
//
//  Created by Muskan on 23/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var viewAssest: UIView!
    @IBOutlet weak var ViewJob: UIView!
    @IBOutlet weak var lblJobName: UILabel!
    @IBOutlet weak var lblEstimatedTime: UILabel!
    @IBOutlet weak var lblAvailability: UILabel!
    @IBOutlet weak var lblJobDetails: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
            case 0:
            self.ViewJob.isHidden = false
            self.viewAssest.isHidden = true
            case 1:
            self.ViewJob.isHidden = true
            self.viewAssest.isHidden = false
            default:
                break
            }
    }
    
}
//extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        <#code#>
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        <#code#>
//    }
//    
//    
//}
