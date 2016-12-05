//
//  IntegerExtension.swift
//  swift1104
//
//  Created by Jorgon on 2016/11/25.
//  Copyright © 2016年 Jorgon. All rights reserved.
//

import Foundation

extension Int {
  func repetitions(task: () -> Void) {
    for _ in 0..<self {
      task()
    }
  }
}

extension String
{
  func testExtension() -> String {
    return "test"
  }
}
