//
//  ViewController.swift
//  Command
//
//  Created by Yiqi Wang on 2017/1/2.
//  Copyright © 2017年 Melody5417. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let receiver = Receiver()
    let invoker = Invoker()
    
    let commandA = ConcreteCommandA(receiver: receiver)
    invoker.addCommand(command: commandA)
    invoker.call()
    
    let commandB = ConcreteCommandB(receiver: receiver)
    invoker.addCommand(command: commandB)
    invoker.call()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

