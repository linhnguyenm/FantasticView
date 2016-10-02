//
//  FantasticView.swift
//  Swift_LinhView
//
//  Created by Linh Nguyen on 10/2/16.
//  Copyright © 2016 Linh Nguyen. All rights reserved.
//

import UIKit

class FantasticView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    let colors : [UIColor] = [.red, .white, .blue, .green, .yellow, .purple]
    var colorCounter = 0
    
    override  init(frame: CGRect){
        super.init(frame: frame)
        
        let scheduledColorChanged = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: true, block: {(timer) in
            UIView.animate(withDuration: 2.0, animations: {
                self.layer.backgroundColor = self.colors[self.colorCounter % self.colors.count].cgColor
                self.colorCounter += 1;
            })
        })
        scheduledColorChanged.fire()
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    

}
