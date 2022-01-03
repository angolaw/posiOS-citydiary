//
//  ComplainCellTableViewCell.swift
//  citydiary
//
//  Created by Willian S. on 03/01/22.

import UIKit

class ComplainCellTableViewCell: UITableViewCell {
    @IBOutlet var pictureImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var registeredAtLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    private func clearAll() {
        pictureImageView.image = nil
        titleLabel.text?.clear()
        registeredAtLabel.text?.clear()
    }

    func prepare(with complain: Complain) {
        clearAll()
        if let image = complain.picture {
            pictureImageView.image = UIImage(data: image)
        }
        titleLabel.text = complain.title
        if let date = complain.registeredAt {
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.locale = Locale(identifier: "pt-BR")
            registeredAtLabel.text = "Registrado em: \(formatter.string(from: date))"
        }
    }
}
