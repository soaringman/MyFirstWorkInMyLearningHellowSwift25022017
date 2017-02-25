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
//    Этот метод вызывается единожды для одного экрана и является отличной точкой, для настройки и работы экрана
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    func setup(){
//        Станем делегатом нашего ConverterView
        ConverterView.delegate = self
    }

}

extension ConverterViewController: ConverterViewDelegate{
    
//    конвертация из рубли в евро
    func converterView(view: ConverterView, convertFroward value: String?) {
//попробуем извлеч число из строки
        guard let rubText = value,
        let rubles = Double (rubText)
        else {
            return
        }
//        пересчитаем валюту из рублей
        let euroes = converter.convertForward(amount: rubles)
//        запишем новое значение в правое поле для ввода
        view.fromValue = "\(euroes)"
    }
    
    func converterView(view: ConverterView, convertBackward value: String?) {
        guard let euroText = value,
        let euroes = Double(euroText)
            else {
            return
        }
        let rubles = converter.convertBackward(amount: euroes)
        view.toValue = "\(rubles)"
    }
}
