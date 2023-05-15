//
//  GalleryViewController.swift
//  ImageSlideShow
//
//  Created by Hemant kumar on 15/05/23.
//

import UIKit

class GalleryViewController: UIViewController {
    
    //MARK: - Outlet's
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - Properties
    var viewModel = GalleryViewModel()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        configureUI()
    }
    
    //MARK: - Helpers
    func registerCell() {
        collectionView.register(UINib(nibName: "GalleryImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GalleryImageCollectionViewCell")
    }
    
    func configureUI() {
        collectionView.delegate = self
        collectionView.dataSource = self
        viewModel.configureImageData()
    }
    
}

extension GalleryViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.arrayOfImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GalleryImageCollectionViewCell", for: indexPath) as! GalleryImageCollectionViewCell
        cell.configureData(with: viewModel.arrayOfImages[indexPath.row].image)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = collectionView.frame.size.width / 2
        return CGSize(width: size , height: size + 64)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "ImageSlider", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ImageSliderViewController") as! ImageSliderViewController
        vc.arrayOfImages = viewModel.arrayOfImages
        vc.selectedIndex = indexPath.row
        self.present(vc, animated: false, completion: nil)
    }
}
