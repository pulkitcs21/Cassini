//
//  CassiniViewController.swift
//  cassini
//
//  Created by Pulkit Agarwal on 2/1/18.
//  Copyright © 2018 Pulkit Agarwal. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier{
            if let url = DemoURLs.NASA[identifier]{
                if let imageVC = segue.destination.contents as? ImageViewController{
                    imageVC.imageURL = url
                    imageVC.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
    }

}
extension UIViewController{
    var contents : UIViewController{
        if let navcon = self as? UINavigationController{
            return navcon.visibleViewController ?? self
        } else {
            return self
        }
    }
}
