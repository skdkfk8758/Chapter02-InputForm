//
//  ReadViewController.swift
//  Chapter02-InputForm
//
//  Created by prologue on 2017. 6. 7..
//  Copyright © 2017년 rubypaper. All rights reserved.
//

import UIKit
class ReadViewController: UIViewController {
  // 전달된 값을 저장할 변수를 정의한다.
  var pEmail: String?
  var pUpdate: Bool?
  var pInterval: Double?
  
  override func viewDidLoad( ) {
    super.viewDidLoad()
    
    // 배경 색상을 설정한다.
    self.view.backgroundColor = UIColor.white
    
    // 레이블 객체를 정의한다.
    let email = UILabel()
    let update = UILabel()
    let interval = UILabel()
    
    // 위치와 영역을 정의한다.
    email.frame = CGRect(x: 50, y: 100, width: 300, height: 30)
    update.frame = CGRect(x: 50, y: 150, width: 300, height: 30)
    interval.frame = CGRect(x: 50, y: 200, width: 300, height: 30)
    
    // 전달받은 값을 레이블에 표시한다.
    email.text = "전달받은 이메일 : \( self.pEmail!)"
    update.text = "업데이트 여부 : \(self.pUpdate == true ? "업데이트 함" : "업데이트 안 함")"
    interval.text = "업데이트 주기 : \(self.pInterval! )분마다"
    
    // 레이블을 루트 뷰에 추가한다.
    self.view.addSubview(email)
    self.view.addSubview(update)
    self.view.addSubview(interval)
  
  }
}
