//
//  ViewController.swift
//  Test_01
//
//  Created by Pipat on 3/10/2565 BE.
//

import UIKit

class ViewController: UIViewController {

//    กำหนด
    var input  = 100
    var total = 100
    
//    สร้างวงกลมสีฟ้า
    @IBOutlet weak var circlePic: UIView!
//    สร้างวงกลมสีขาว
    @IBOutlet weak var circlePic2: UIView!
//    สร้างหลอดprogress
    @IBOutlet weak var progressBar: UIProgressView!
    
    var percentageProgress = 0
//    ข้อความpercent
    @IBOutlet weak var percentText: UILabel!
     
//    สร้างปุ่มบวก
    @IBOutlet weak var addButton: UIButton!
//    สร้างปุ่มลบ
    @IBOutlet weak var subButton: UIButton!
//    เมื่อเริ่มการทำงานให้ทำอะไร
    override func viewDidLoad() {
        super.viewDidLoad()
        //วงกลมขนาดสีฟ้า 100
        circlePic.layer.cornerRadius = 100.0
        //วงกลมขนาดสีขาว 90
        circlePic2.layer.cornerRadius = 90.0
        
//        ปุ่มบวกขนาด 16
        addButton.layer.cornerRadius = 16.0
        
//        ปุ่มลบขนาด 16
        subButton.layer.cornerRadius = 16.0
        
        //แสดงข้อความ
        percentText.text = "\(input)%"
        
        update()
        
    }
//    เมื่อกดปุ่มลบ
    @IBAction func sub(_ sender: UIButton) {
//        ลดค่า 5
       input = input - 5
    
        update()

    
    }
//    เมื่อกดปุ่มบวก
    @IBAction func add(_ sender: UIButton) {
//        บวกค่า 5
        input = input + 5
     
        update()
    }
    
    func update(){
//        เรียกเพื่อแสดงข้อความ
        percentText.text = "\(input)%"
        
//        เรียกเพื่อแสดงแถบprogress
        progressBar.progress  = Float(input) / Float(total)
      
    }
    
    
    
    
}

