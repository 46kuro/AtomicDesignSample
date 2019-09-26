//
//  SampleView.swift.swift
//
//  Created by shinji-kurosawa on 26/09/2019.
//  Copyright 2019 Shinji Kurosawa. All rights reserved.
//

import UIKit

public class SampleView: UIView {

    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var name2Label: UILabel!

    public var name: String? {
        get {
            nameLabel.text
        }
        set {
            nameLabel.text = newValue
            nameLabel.isHidden = newValue == nil 
        }
    }

    public var name2: String? {
        get {
            name2Label.text
        }
        set {
            name2Label.text = newValue
            name2Label.isHidden = newValue == nil 
        }
    }

    override public func awakeFromNib() {
        super.awakeFromNib()
    }
}
