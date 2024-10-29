//
//  HourlyForecastCollectionViewCell.swift
//  Weather App
//
//  Created by Gabi on 28/10/24.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .black
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
