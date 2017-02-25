//
//  ConverterViewController.swift
//  HellowSwift25022017
//
//  Created by Macuser on 25.02.17.
//  Copyright © 2017 Macuser. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    var converter = Converter(forwardRatio: 1 / 61.9, backwardRatio: 58.3, precision: 2)
    @IBOutlet var ConverterView: ConverterView!

}
