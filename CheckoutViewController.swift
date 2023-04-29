//
//  CheckoutViewController.swift
//  Final
//
//  Created by Kole Reiser on 4/27/23.
//

import UIKit

class CheckoutViewController: UIViewController {
    
    @IBOutlet weak var cartLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    var progress = Progress(totalUnitCount: 50)
    
    override func viewDidLoad() {
        super.viewDidLoad()
            progressBar.setProgress(0.0, animated: true)
            super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        cartLabel.text = String(Int(cartCounter))
    }
    
    @IBAction func paymentButton(_ sender: Any) {
        progress.completedUnitCount = 0
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { [self] (timer) in
            if (self.progress.isFinished){
                timer.invalidate()
                self.progressBar.setProgress(0.0, animated: true)
                cartCounter = 0
                cartLabel.text = String(Int(cartCounter))
            }else{
                self.progress.completedUnitCount += 1
                let progressFloat = Float(self.progress.fractionCompleted)
                self.progressBar.setProgress(progressFloat, animated: true)
                
            }
            }
    }
    
    
    

}
