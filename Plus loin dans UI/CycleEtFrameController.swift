//
//  CycleEtFrameController.swift
//  Plus loin dans UI
//
//  Created by Dea-loC on 03/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import UIKit

class CycleEtFrameController: UIViewController {

    @IBOutlet weak var vueFramEtBounce: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View did load appelé")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View did appear")
        print("Frame -> : \(vueFramEtBounce.frame)")
        print("Bounds -> : \(vueFramEtBounce.bounds)")
        UIView.animate(withDuration: 1, animations: {
            self.vueFramEtBounce.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi) / 12)
            }) { (success) in
                print("Frame -> : \(self.vueFramEtBounce.frame)")
                print("Bounds -> : \(self.vueFramEtBounce.bounds)")
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View did disappear")
    }
    

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
