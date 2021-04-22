//
//  ItemDetailViewController.swift
//  Expo1900
//
//  Created by seungwoo kim on 2021/04/10.
//

import UIKit

final class ItemDetailViewController: UIViewController {
    
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    var exhibitedItem: ExhibitedItem?
    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let exhibitedItem = self.exhibitedItem else { return }
        self.navigationItem.title = exhibitedItem.name
        itemImage.image = UIImage(named: exhibitedItem.imageName)
        itemDescription.text = exhibitedItem.description
        appdelegate.shouldSupportAllOrientation = true
    }
}
