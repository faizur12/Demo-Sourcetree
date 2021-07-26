//
//  ViewController.swift
//  forNavigationBarTitle
//
//  Created by CEINFO on 22/07/21.
//  Copyright © 2021 Demo. All rights reserved.
//

import UIKit



class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
       
      private let imageView = UIImageView(image: UIImage(named: "image_name"))
       private var shouldResize: Bool?
    
    @IBOutlet weak var UIView: UIView!
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        myTableView.delegate = self
        myTableView.dataSource = self
        navigationController?.navigationBar.backgroundColor = .green
        navigationController?.navigationBar.tintColor = .green
        let aa = UINavigationBarAppearance()
//        aa.backgroundColor = .green
        navigationController?.navigationBar.scrollEdgeAppearance = aa
  
//
        if UIDevice.current.orientation.isPortrait {
            shouldResize = true
        } else if UIDevice.current.orientation.isLandscape {
            shouldResize = false
        }
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 200
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hi faizur"
        return cell
        
       }
    
// func addNavBarImage() {
//     let navController = navigationController!
//     let image = UIImage(named: "$_57")
//     let imageView = UIImageView(image: image)
//     let bannerWidth = navController.navigationBar.frame.size.width
//     let bannerHeight = navController.navigationBar.frame.size.height
//     let bannerX = bannerWidth / 2 - (image?.size.width)! / 2
//     let bannerY = bannerHeight / 2 - (image?.size.height)! / 2
//     imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
//     imageView.contentMode = .scaleAspectFit
//     navigationItem.titleView = imageView
// }

}

