//
//  MovieCollectionViewCell.swift
//  collectionview-ios
//
//  Created by Hantash on 18/12/2021.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    static let identifier = "MovieCollectionViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(with movie: Movie) {
        movieImageView.image = UIImage(named: movie.image)
        titleLabel.text = movie.title
    }

}
