//
//  MenuViewController.swift
//  StoreSearch
//
//  Created by Matthijs on 16/08/2016.
//  Copyright © 2016 Razeware. All rights reserved.
//

import UIKit

protocol MenuViewControllerDelegate: class {
  func menuViewControllerSendSupportEmail(_ controller: MenuViewController)
}

class MenuViewController: UITableViewController {
  
  weak var delegate: MenuViewControllerDelegate?

  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    
    if indexPath.row == 0 {
      delegate?.menuViewControllerSendSupportEmail(self)
    }
  }
}
