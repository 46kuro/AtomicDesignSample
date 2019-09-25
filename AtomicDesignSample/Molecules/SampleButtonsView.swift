//
//  SampleButtonsView.swift
//  AtomicDesignSample
//
//  Created by Shinji Kurosawa on 2019/09/24.
//  Copyright © 2019 Shinji Kurosawa. All rights reserved.
//

import UIKit

class SampleButtonsView: UIView {
    
    var text1: String
    var text2: String
    var int: Int
    
    // sourcery:inline:SampleButtonsView.TemplateName
    @IBOutlet private var text1Label: UILabel!
    @IBOutlet private var text2Label: UILabel!

    public var text1: String {
        get {
            text1Label.text
        }
        set {
            text1Label.text = newValue 
        }
    } 
    public var text2: String {
        get {
            text2Label.text
        }
        set {
            text2Label.text = newValue 
        }
    } 
    // sourcery:end
}
