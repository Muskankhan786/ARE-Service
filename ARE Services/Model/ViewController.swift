//
//  ViewController.swift
//  ARE Services
//
//  Created by Muskan on 23/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    var arrAttachments = AttachmentsModel(arrImageName: ["Duck","Eagle","Hen", "Jaguar", "Kiwi", "Peacock", "Peagon", "Swan", "turtle", "HummingBird"], arrImage: ["Duck","Eagle","Hen","Kiwi", "Peacock", "Peagon", "Swan", "HummingBird"])
    
    @IBOutlet weak var lblOpen: UILabel!
    @IBOutlet weak var ViewActive: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var viewAssest: UIView!
    @IBOutlet weak var ViewJob: UIView!
    @IBOutlet weak var lblJobName: UILabel!
    @IBOutlet weak var lblEstimatedTime: UILabel!
    @IBOutlet weak var lblAvailability: UILabel!
    @IBOutlet weak var lblJobDetails: UILabel!
    @IBOutlet weak var collectionViewAttachments: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    // IBAction Of Segment Control
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

// MARK: - Extension of Collection View
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrAttachments.arrImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StaticText.cellIdentifier , for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell() }
        cell.layer.cornerRadius = 10.0
        cell.clipsToBounds = true
        cell.imgRender(imagesOfService: UIImage(named: self.arrAttachments.self.arrImage[indexPath.row]) ?? UIImage())
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let yourWidth = collectionView.bounds.width/3.5
        let yourHeight = yourWidth
        return CGSize(width: yourWidth, height: yourHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let secondVC = self.storyboard?.instantiateViewController(identifier: StaticText.storyboardIdentifier) as? ImageViewController  else { return }
        secondVC.imgFull = UIImage(named: self.arrAttachments.self.arrImage[indexPath.row]) ?? UIImage()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}

// MARK: Extension For Setting UI Elements
extension ViewController {
    private func setupUI() {
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.segmentControl.setTitleTextAttributes(titleTextAttributes, for:.selected)
        self.ViewActive.layer.cornerRadius = 7.5
        self.lblOpen.layer.backgroundColor = #colorLiteral(red: 0.7306457758, green: 0.87250489, blue: 1, alpha: 0.3)
        self.lblOpen.layer.cornerRadius = 13.0
        self.lblOpen.layer.borderWidth = 1
        self.lblOpen.layer.borderColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        self.lblOpen.textColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
        
    }
    
}
