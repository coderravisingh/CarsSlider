//
//  ViewController.swift
//  CarsSlider
//
//  Created by RaviSingh on 01/03/21.
//

import UIKit
import CardSlider


struct Item: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
    

}

class ViewController: UIViewController, CardSliderDataSource {
    
   
  
    var data = [Item]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      dataAdd()
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Slide"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }


    
    func item(for index: Int) -> CardSliderItem {
        return data[index]
    }
    
    func numberOfItems() -> Int {
        return data.count
    }
    
    func dataAdd() {
        data.append(Item(image: UIImage(systemName: "person")!,
                         rating: nil,
                         title: "",
                         subtitle: "",
                         description: ""))
        data.append(Item(image: UIImage(systemName: "person")!,
                         rating: nil,
                         title: "",
                         subtitle: "",
                         description: ""))
        data.append(Item(image: UIImage(systemName: "person")!,
                         rating: nil,
                         title: "",
                         subtitle: "",
                         description: ""))
    }

}

