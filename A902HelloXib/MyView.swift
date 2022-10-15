//
//  MyView.swift
//  A902HelloXib
//
//  Created by 申潤五 on 2022/10/15.
//

import UIKit

class MyView: UIView {

    var view:UIView!
    
    var switchAction:(()->())?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        
        super.init(coder: coder)
        setup()
//        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func helloAction(_ sender: UISwitch) {
        print("hello")
        switchAction?()
    }
    func setup(){
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [ UIView.AutoresizingMask.flexibleWidth,
            UIView.AutoresizingMask.flexibleHeight ] // 一些歷史原因，必需要上的設定
        addSubview(view) //把 由 UI檔作出來的 View 加入成自己的 SubView
    }
    
    func loadViewFromNib()->UIView{
        let nib = UINib(nibName: "MyView", bundle: nil )
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    
    
}
