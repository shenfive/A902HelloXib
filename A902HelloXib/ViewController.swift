//
//  ViewController.swift
//  A902HelloXib
//
//  Created by 申潤五 on 2022/10/15.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var theImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://miro.medium.com/max/720/1*FKlRYAU5z-74RYqsTYrOAQ@2x.png")!
        
        
        DispatchQueue.global().async {
            do{
                print("startat:\(Date().timeIntervalSince1970)")
                let imageData = try Data(contentsOf: url)
                DispatchQueue.main.async {
                    self.theImageView.image = UIImage(data: imageData)
                    print("endat:\(Date().timeIntervalSince1970)")
                }
            }catch{
                print(error.localizedDescription)
            }
        }
        print("nextWorkAt:\(Date().timeIntervalSince1970)")
        
        
      
    }


}

