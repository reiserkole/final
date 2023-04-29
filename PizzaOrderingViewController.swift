//
//  PizzaOrderingViewController.swift
//  Final
//
//  Created by Kole Reiser on 4/27/23.
//

import UIKit

var cartCounter = 0

class PizzaOrderingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @objc func addPizza(){
       cartCounter += 1
    }
    @objc func addPizza2(){
        cartCounter += 1
    }
    @objc func addPizza3(){
        cartCounter += 1
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width))
        scrollView.backgroundColor = .white
        view.addSubview(scrollView)
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 1500)
        
        let pizzaImage = UIImageView(frame: CGRect(x: 50, y: 100, width: 300, height: 300))
       
        pizzaImage.image = UIImage(named: "Peporoni Pizza")
        
        scrollView.addSubview(pizzaImage)
        
        let imageButton = UIButton(frame: CGRect(x: 50, y: 450, width: 300, height: 60))
        
        imageButton.backgroundColor = .black
        
        scrollView.addSubview(imageButton)
        
        imageButton.addTarget(self, action: #selector(addPizza), for: .touchUpInside)
        
        let label = UILabel(frame: CGRect(x: 50, y: 450, width: 300, height: 60))
        label.font = UIFont(name: "Plain", size: 30)
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 2
        label.text = "Add To Cart"
        scrollView.addSubview(label)
        
        
    }

}
