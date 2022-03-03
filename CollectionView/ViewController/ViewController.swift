//
//  ViewController.swift
//  CollectionView
//
//  Created by Admin on 27.02.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagecollectionView: UICollectionView!
    let imgData: [ImageModule] = [
        ImageModule(imageView: UIImage(named: "Georgia")!, fullName: "Georgia", imageDescription: "Capital city of Georgia is Tbilisi"),
        ImageModule(imageView: UIImage(named: "England")!, fullName: "England", imageDescription: "Capital city of Englad is London"),
        ImageModule(imageView: UIImage(named: "USA")!, fullName: "USA", imageDescription: "Capital city of USA is Washington, D.C."),
        ImageModule(imageView: UIImage(named: "Germany")!, fullName: "German", imageDescription: "Capital city of German is Berlin"),
        ImageModule(imageView: UIImage(named: "Japan")!, fullName: "Japan", imageDescription: "Capital city of Japan is Tokyo")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        SetUpCollectionView()
    }

    func SetUpCollectionView() {
        imagecollectionView.delegate = self
        imagecollectionView.dataSource = self
        imagecollectionView.register(UINib(nibName: "ImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ImageCollectionViewCell")
    }

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imagecollectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        cell.configureCell(with: imgData[indexPath.row])
        return cell
    }
}
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
}
extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            vc.imgModule = imgData[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}


