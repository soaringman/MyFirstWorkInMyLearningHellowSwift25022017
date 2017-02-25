//
//  ConverterView.swift
//  HellowSwift25022017
//
//  Created by Macuser on 25.02.17.
//  Copyright © 2017 Macuser. All rights reserved.
//

import UIKit

//что бы задать слабую ссылку зададим наследование нашего протокола от протокола class
protocol ConverterViewDelegate:class {
    func converterView(view:ConverterView, convertFroward value:String?)
    func converterView(view:ConverterView, convertBackward lavue:String?)
}
class ConverterView: UIView {
    
    weak var delegate:ConverterViewDelegate?
    //поле слева сделаем сеттер
    var toValue:String?  {
        set {
            toTextField?.text = newValue
        }
        get {
            return toTextField?.text
        }
    }
    
    //поле справа сделаем геттер
    var fromValue:String?{
        get {
            return fromTextField?.text
        }
        set {
            fromTextField?.text = newValue
        }
    }
    //    привяжим два текстовых поля
    @IBOutlet private weak var toTextField:UITextField?
    @IBOutlet private weak var fromTextField:UITextField?
    
    @IBAction func forwardPressed(){
        delegate?.converterView(view: self, convertFroward: fromValue)
    }
    @IBAction func backwardPressed(){
        delegate?.converterView(view: self, convertBackward: fromValue)
    }
    required init?(coder aDecoder:NSCoder){
        super.init(coder: aDecoder)
        setup()
        
    }
    private func setup(){
        self.layer.cornerRadius = 5
        self.clipsToBounds = true
    }
}
