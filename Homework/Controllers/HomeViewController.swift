//
//  HomeViewController.swift
//  Homework
//
//  Created by Nodir on 12/04/24.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var items : Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()

    }

//   Mark: - Method
    
    func initViews(){
        tableView.delegate = self
        tableView.dataSource = self
        
        setNavigationBar()
        
        items.append(Post(fullname: "Muzaffar", personImage: "im_person1", contentImage1: "im_post1", contentImage2: "im_post2"))
        items.append(Post(fullname: "Laziz", personImage: "im_person2", contentImage1: "im_post3", contentImage2: "im_post4"))
    }
    
    func setNavigationBar(){
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_send")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: nil, action: #selector(rightTapped))
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: nil, action: #selector(leftTapped))
        
        title = "Instagram"
    }
    
//   Mark: - Action
    
    @objc func rightTapped(){
        
    }
    
    @objc func leftTapped(){
        
    }
    
    
    
//   Mark: - Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        
        let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
        
        cell.nameLabel.text = item.fullname
        cell.profileImageView.image = UIImage(named: item.personImage!)
        cell.post1ImageView.image = UIImage(named: item.contentImage1!)
        cell.post2ImageView.image = UIImage(named: item.contentImage2!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
    

}
