//
//  ViewController.swift
//  DemoOne
//  Created by Apple on 15/06/21.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate, UIGestureRecognizerDelegate {

    // MARK: - Outlets
    @IBOutlet weak var tableListData: UITableView!
    @IBOutlet weak var collectionViewBanners: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    // MARK: - Property declarion
    var viewModel = ValueViewModel()

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
    }
    
    func setupView() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let width = UIScreen.main.bounds.width
        layout.itemSize = CGSize(width: width, height: 220)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        layout.scrollDirection = .horizontal
        collectionViewBanners?.collectionViewLayout = layout
        
        tableListData.estimatedRowHeight = 60
        tableListData.rowHeight = UITableView.automaticDimension
       
        pageControl.numberOfPages = viewModel.listBanner.count
        pageControl.currentPage = 0
        
        collectionViewBanners.reloadData()
    }
    // MARK: - SearchBar Methods
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        viewModel.updateSearch(searchText: searchText)
        tableListData.reloadData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
    
    // MARK: - UIScrollView Methods
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
    // MARK: - UICollectionView Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.listBanner.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? BannerCollectionViewCell else { return UICollectionViewCell() }
        cell.configure(data: viewModel.listBanner[indexPath.item])
        return cell
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
        
    // MARK: - UITableView Methods
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let searchBar:UISearchBar = UISearchBar(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 50))
        searchBar.placeholder = " Search..."
        searchBar.delegate = self
        return searchBar
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.mutableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? ListTableViewCell else { return UITableViewCell () }
        cell.configure(data: viewModel.mutableData[indexPath.row])
        return cell
     }
}
