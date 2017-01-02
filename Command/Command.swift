//
//  Command.swift
//  Command
//
//  Created by Yiqi Wang on 2017/1/2.
//  Copyright © 2017年 Melody5417. All rights reserved.
//

import UIKit

class Command: NSObject {
  
  let receiver: Receiver
  
  init(receiver: Receiver) {
    self.receiver = receiver
  }
  
  func execute() {
    print("Command " + #function)
  }
  
}

class ConcreteCommandA: Command {
  
  override func execute() {
    print("ConcreteCommandA " + #function)
    receiver.actionA()
  }
  
}

class ConcreteCommandB: Command {
  
  override func execute() {
    print("ConcreteCommandB " + #function)
    receiver.actionB()
  }
  
}

