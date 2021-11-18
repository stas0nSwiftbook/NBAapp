//
//  NewsListViewController.swift
//  NBAapp
//
//  Created by Kristi on 14.11.2021.
//

import UIKit

// MARK: - Protocol
protocol NewsDetailedDelegate {
    func updateModel(with: News, forIndex: Int)
}

class NewsListViewController: UIViewController {
    
    //MARK: - Outlets

    @IBOutlet var tableView: UITableView!
    
    //MARK: - Public properties
    var newsList = News.getNews()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.title = "News"
    }
}
    
// MARK: - Extension
extension NewsListViewController: UITableViewDataSource, UITableViewDelegate {
        
    // MARK: - Table view data source
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
              newsList.count
          }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as! NewsTableViewCell
        let news = newsList[indexPath.row]
       
        cell.configure(with: news)

           return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let fullNewsVC = segue.destination as? NewsDetailedController else {return}
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let news = newsList[indexPath.row]
        fullNewsVC.news = news
        fullNewsVC.delegate = self
        fullNewsVC.rowIndex = indexPath.row
    }
}

// MARK: Extension Delegate
extension NewsListViewController: NewsDetailedDelegate {
    func updateModel(with news: News, forIndex index: Int) {
        newsList[index] = news
        tableView.reloadData()
    }
}
