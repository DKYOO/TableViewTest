//
//  ViewTableViewCell.swift
//  TableViewKrym
//
//  Created by Dmitry Kaveshnikov on 4/15/21.
//

import UIKit

class ViewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var raitLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
