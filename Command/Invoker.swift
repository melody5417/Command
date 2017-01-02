//
//  Invoker.swift
//  Command
//
//  Created by Yiqi Wang on 2017/1/2.
//  Copyright © 2017年 Melody5417. All rights reserved.
//

import UIKit

class Invoker: NSObject {
  
  var commands: NSMutableArray = NSMutableArray()
  
  func addCommand(command: Command) {
    commands.add(command)
  }
  
  func deleteCommand(command: Command) {
    commands.remove(command)
  }
  
  func call() {
    print("Invoker " + #function)
    for command in commands {
      (command as! Command).execute()
    }
  }
  
}
