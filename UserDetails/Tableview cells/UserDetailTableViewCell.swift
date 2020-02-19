//
//  UserDetailTableViewCell.swift
//  UserDetails
//
//  Created by Nithin Sasankan on 18/02/20.
//  Copyright © 2020 Nithin S. All rights reserved.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {

    @IBOutlet var headertLabel   : UILabel!
    @IBOutlet var titleLabel     : UILabel!
    @IBOutlet var contentLabel   : UILabel!

    @IBOutlet var contentTypeImageView   : UIImageView!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.selectionStyle = .none

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    var address: Address? {
        
        didSet {
            self.contentTypeImageView?.image = UIImage(named: "addressIcon")
            
            var userAddress = ""
            if (address?.street?.count)! > 0 {
                userAddress = userAddress + (address?.street)! + ", "
            }
            if (address?.suite?.count)! > 0 {
                userAddress = userAddress + (address?.suite)! + ", "
            }
            if (address?.city?.count)! > 0 {
                userAddress = userAddress + (address?.city)! + ", "
            }
            if (address?.zipcode?.count)! > 0 {
                userAddress = userAddress + "\nZipcode : \((address?.zipcode)!)"
            }

            self.contentLabel.text = userAddress
        }
    }

    var company: Company? {
        
        didSet {
            self.contentTypeImageView?.image = UIImage(named: "workIcon")
            
            var userCompany = ""
            if (company?.name?.count)! > 0 {
                userCompany = userCompany + (company?.name)! + "\n"
            }
            if (company?.catchPhrase?.count)! > 0 {
                userCompany = userCompany + (company?.catchPhrase)! + "\n"
            }
            if (company?.bs?.count)! > 0 {
                userCompany = userCompany + (company?.bs)!
            }

            self.contentLabel.text = userCompany

        }
    }

}
