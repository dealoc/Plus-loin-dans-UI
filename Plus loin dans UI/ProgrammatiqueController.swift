//
//  ProgrammatiqueController.swift
//  Plus loin dans UI
//
//  Created by Dea-loC on 03/04/2018.
//  Copyright © 2018 Dea-loC. All rights reserved.
//

import UIKit

class ProgrammatiqueController: UIViewController {
    
    @IBOutlet weak var scroll: UIScrollView!
    
    var monPremierUIView: UIView?
    var monPremierLabel: UILabel?
    var monPremierBouton: UIButton?
    var maPremierIV: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 200, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30 / 255, green: 123 / 255, blue: 90 / 255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        guard monPremierUIView != nil else { return }
        scroll.addSubview(monPremierUIView!)

        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIView!.frame.maxY + 20, width: view.frame.width, height: 50))
        monPremierLabel?.text = "Ceci est un texte"
        monPremierLabel?.numberOfLines = 1
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 30)
        monPremierLabel?.textAlignment = .center
        scroll.addSubview(monPremierLabel!)
        
        let rectDeMonBouton = CGRect(x: (view.frame.width / 2) - 75, y: monPremierLabel!.frame.maxY + 180, width: 150, height: 40)
        monPremierBouton = UIButton(frame: rectDeMonBouton)
        monPremierBouton?.setTitle("Appuyer", for: UIControlState.normal)
        monPremierBouton?.tintColor = UIColor.red
        monPremierBouton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        monPremierBouton?.backgroundColor = UIColor.black
        monPremierBouton?.layer.borderColor = UIColor.white.cgColor
        monPremierBouton?.layer.borderWidth = 2
        scroll.addSubview(monPremierBouton!)
        
        
        monPremierBouton?.addTarget(self, action: #selector(boutonAppuyer), for: .touchUpInside)
        
        let largeur = view.frame.width - 60
        let rectIC = CGRect(x: 30, y: (view.frame.height / 2) - (largeur / 2), width: largeur, height: largeur)
        maPremierIV = UIImageView(frame: rectIC)
        maPremierIV?.image = UIImage(named: "codabee")
        maPremierIV?.contentMode = .scaleToFill
        maPremierIV?.clipsToBounds = true
        maPremierIV?.layer.cornerRadius = maPremierIV!.frame.width / 2
        scroll.addSubview(maPremierIV!)
        
        scroll.bringSubview(toFront: monPremierBouton!)
        
        maPremierIV?.isUserInteractionEnabled = true
        maPremierIV?.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(imageAppuyer)))
        
        let couleurs: [UIColor] = [.red, .blue, .white, .black]
        var maximum: CGFloat = (maPremierIV?.frame.maxY)!
        for couleur in couleurs {
            let vue = UIView(frame: CGRect(x: 0, y: maximum + 10, width: 100, height: 100))
            vue.backgroundColor = couleur
            scroll.addSubview(vue)
            maximum = vue.frame.maxY
        }
        
        scroll.contentSize = CGSize(width: view.frame.width * 2, height: maximum + 100)
    }
    
    @objc func imageAppuyer() {
        print("Image touché !")
    }
    
    @objc func boutonAppuyer() {
        print("Bouton appuyer !")
    }
    
}
