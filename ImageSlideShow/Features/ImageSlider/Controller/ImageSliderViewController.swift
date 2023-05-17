//
//  ImageSliderViewController.swift
//  ImageSlideShow
//
//  Created by Hemant kumar on 15/05/23.
//

import UIKit

protocol GetIndex {
    func visibleItem(with index: Int)
}

class ImageSliderViewController: UIViewController {
    
    //MARK: - Outlet's
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    //MARK: - Properties
    var arrayOfImages = [GalleryModel]()
    var selectedIndex = 0
    var getIndex: GetIndex?
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        registerCell()
        configureUI()
        collectionView.scrollToItem(at: IndexPath(item: selectedIndex, section: 0), at: .centeredHorizontally, animated: false)
    }
    
    // MARK: - Helpers
    func registerCell() {
        collectionView.register(UINib(nibName: "ImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ImageCollectionViewCell")
    }
    
    func configureUI() {
        collectionView.delegate = self
        collectionView.dataSource = self
        
        pageControl.numberOfPages = arrayOfImages.count
        self.pageControl.currentPage = selectedIndex
        
        if arrayOfImages.count <= 1 {
            pageControl.isHidden = true
        } else {
            pageControl.isHidden = false
        }
    }
    
    //MARK: - Button Action
    @IBAction func cancelButton(_ sender: UIButton) {
        if let getIndex = getIndex {
            getIndex.visibleItem(with: selectedIndex)
        }
        self.dismiss(animated: true)
    }
    
    @IBAction func shareButton(_ sender: UIButton) {
        if let name = URL(string: arrayOfImages[selectedIndex].image) {
            let objectsToShare = [name]
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            self.present(activityVC, animated: true, completion: nil)
        }
    }
}


extension ImageSliderViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        cell.configureData(with: arrayOfImages[indexPath.row].image)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width , height: collectionView.frame.size.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPage = Int(scrollView.contentOffset.x / collectionView.frame.size.width)
        pageControl.currentPage = currentPage
        selectedIndex = currentPage
    }
}
