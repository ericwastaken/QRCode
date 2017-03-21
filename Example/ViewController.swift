//
//  ViewController.swift
//  Example
//
//  Created by Alexander Schuch on 25/01/15.
//  Copyright (c) 2015 Alexander Schuch. All rights reserved.
//

import UIKit
import QRCode

class ViewController: UIViewController {

    @IBOutlet weak var imageViewSmall1: UIImageView!
    @IBOutlet weak var imageViewSmall2: UIImageView!
    @IBOutlet weak var imageViewSmall3: UIImageView!
    @IBOutlet weak var imageViewSmall4: UIImageView!
    @IBOutlet weak var imageViewMedium: UIImageView!
    @IBOutlet weak var imageViewLarge: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // We begin with codes with no overlay
        showCodes()

    }

    @IBAction func showOverlaySwitched(_ sender: UISwitch) {
        if sender.isOn {
            showCodesWithOverlays()
        } else {
            showCodes()
        }
    }
    
    func showCodes() {
        // large
        // default
        imageViewLarge.image = {
            var qrCode = QRCode("http://github.com/aschuch/QRCode")!
            qrCode.size = self.imageViewLarge.bounds.size
            qrCode.errorCorrection = .High
            qrCode.overlayImage = UIImage(named: "address-card")
            return qrCode.image
        }()
        
        // medium
        // purple
        imageViewMedium.image = {
            var qrCode = QRCode("http://schuch.me")!
            qrCode.size = self.imageViewMedium.bounds.size
            qrCode.color = CIColor(rgba: "8e44ad")
            return qrCode.image
        }()
        
        // small
        // red (inverted)
        imageViewSmall1.image = {
            var qrCode = QRCode("http://objc.at")!
            qrCode.size = self.imageViewSmall1.bounds.size
            qrCode.color = CIColor(rgba: "fff")
            qrCode.backgroundColor = CIColor(rgba: "e74c3c")
            return qrCode.image
        }()
        
        // small
        // green
        imageViewSmall2.image = {
            var qrCode = QRCode("http://apple.com")!
            qrCode.size = self.imageViewSmall1.bounds.size
            qrCode.color = CIColor(rgba: "16a085")
            qrCode.backgroundColor = CIColor(rgba: "000")
            return qrCode.image
        }()
        
        // small
        // orange
        imageViewSmall3.image = {
            var qrCode = QRCode("http://example.com")!
            qrCode.size = self.imageViewSmall1.bounds.size
            qrCode.color = CIColor(rgba: "c0392b")
            qrCode.backgroundColor = CIColor(rgba: "f1c40f")
            return qrCode.image
        }()
        
        
        // small
        // blue
        imageViewSmall4.image = {
            var qrCode = QRCode("http://example.com")!
            qrCode.size = self.imageViewSmall1.bounds.size
            qrCode.color = CIColor(rgba: "2980b9")
            return qrCode.image
        }()
    }
    
    func showCodesWithOverlays() {
        // large
        // default
        imageViewLarge.image = {
            var qrCode = QRCode("http://github.com/aschuch/QRCode")!
            qrCode.size = self.imageViewLarge.bounds.size
            qrCode.errorCorrection = .High
            qrCode.overlayImage = UIImage(named: "address-card")
            qrCode.overlayImagePercentage = 0.75
            return qrCode.imageWithOverlay
        }()
        
        // medium
        // purple
        imageViewMedium.image = {
            var qrCode = QRCode("http://schuch.me")!
            qrCode.size = self.imageViewMedium.bounds.size
            qrCode.errorCorrection = .High
            qrCode.color = CIColor(rgba: "8e44ad")
            qrCode.overlayImage = UIImage(named: "street-view")
            qrCode.overlayImagePercentage = 0.75
            return qrCode.imageWithOverlay
        }()
        
        // small
        // red (inverted)
        imageViewSmall1.image = {
            var qrCode = QRCode("http://objc.at")!
            qrCode.size = self.imageViewSmall1.bounds.size
            qrCode.errorCorrection = .High
            qrCode.color = CIColor(rgba: "fff")
            qrCode.backgroundColor = CIColor(rgba: "e74c3c")
            qrCode.overlayImage = UIImage(named: "thumbs-up")
            qrCode.overlayImagePercentage = 0.5
            return qrCode.imageWithOverlay
        }()
        
        // small
        // green
        imageViewSmall2.image = {
            var qrCode = QRCode("http://apple.com")!
            qrCode.size = self.imageViewSmall1.bounds.size
            qrCode.errorCorrection = .High
            qrCode.color = CIColor(rgba: "16a085")
            qrCode.backgroundColor = CIColor(rgba: "000")
            qrCode.overlayImage = UIImage(named: "address-card")
            qrCode.overlayImagePercentage = 0.5
            return qrCode.imageWithOverlay
        }()
        
        // small
        // orange
        imageViewSmall3.image = {
            var qrCode = QRCode("http://example.com")!
            qrCode.size = self.imageViewSmall1.bounds.size
            qrCode.errorCorrection = .High
            qrCode.color = CIColor(rgba: "c0392b")
            qrCode.backgroundColor = CIColor(rgba: "f1c40f")
            qrCode.overlayImage = UIImage(named: "street-view")
            qrCode.overlayImagePercentage = 0.5
            return qrCode.imageWithOverlay
        }()
        
        
        // small
        // blue
        imageViewSmall4.image = {
            var qrCode = QRCode("http://example.com")!
            qrCode.size = self.imageViewSmall1.bounds.size
            qrCode.errorCorrection = .High
            qrCode.color = CIColor(rgba: "2980b9")
            qrCode.overlayImage = UIImage(named: "thumbs-up")
            qrCode.overlayImagePercentage = 0.5
            return qrCode.imageWithOverlay
        }()
    }

}
