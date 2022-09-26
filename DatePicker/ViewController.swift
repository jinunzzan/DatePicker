//
//  ViewController.swift
//  DatePicker
//
//  Created by Eunchan Kim on 2022/09/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var img1: UIImageView!
    
    @IBOutlet weak var img2: UIImageView!
    
    @IBOutlet weak var img3: UIImageView!
    
    @IBOutlet weak var img4: UIImageView!
    
    @IBOutlet weak var dataLabels0: UILabel!
    
    @IBOutlet weak var dataLabels1: UILabel!
    
    @IBOutlet weak var dataLabels2: UILabel!
    
    @IBOutlet weak var dataLabels3: UILabel!
    
    
    @IBOutlet weak var d_100: UILabel!
    @IBOutlet weak var d_200: UILabel!
    @IBOutlet weak var d_300: UILabel!
    @IBOutlet weak var d_400: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //img 크기, 테두리 지정
        img1.layer.cornerRadius = 30
        img1.layer.borderWidth = 2
        img1.layer.borderColor = UIColor.lightGray.cgColor
        
        img2.layer.cornerRadius = 30
        img2.layer.borderWidth = 2
        img2.layer.borderColor = UIColor.lightGray.cgColor
        
        img3.layer.cornerRadius = 30
        img3.layer.borderWidth = 2
        img3.layer.borderColor = UIColor.lightGray.cgColor
        
        img4.layer.cornerRadius = 30
        img4.layer.borderWidth = 2
        img4.layer.borderColor = UIColor.lightGray.cgColor
        
        
        //datalabel 초기값
        dataLabels0.text = "D+100"
        dataLabels0.textColor = .white
        dataLabels0.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        dataLabels0.textAlignment = .center
        
        dataLabels1.text = "D+200"
        dataLabels1.textColor = .white
        dataLabels1.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        dataLabels1.textAlignment = .center
        
        dataLabels2.text = "D+300"
        dataLabels2.textColor = .white
        dataLabels2.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        dataLabels2.textAlignment = .center
        
        dataLabels3.text = "D+400"
        dataLabels3.textColor = .white
        dataLabels3.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        dataLabels3.textAlignment = .center
        
    }
    
    
    @IBAction func datePick(_ sender: UIDatePicker) {
        
       
        let dataPickerView = sender //전달될 인수 저장
        let formatter = DateFormatter() //DateFormatter 클래스 상수 선언
        formatter.dateFormat = "yyyy년 \n MM월 dd일" //formatter의 dateFormat 속성 설정
        
        //오늘 날짜로 초기화
        let date = Date()
        
        //dataFomatter 문자열로 변형해서 출력하기
        // 날짜 계산법
        // d+100 -> (date + 86400 * 100) // date + 86400 * 일수 (24시간 * 60분 * 60초 = 86400)
        // 100일 시작///
        dataLabels0.text = formatter.string(from: dataPickerView.date + 86400 * 100)
        // 100일 후 레이블 스타일
        dataLabels0.textColor = .white
        dataLabels0.font = UIFont.systemFont(ofSize: 17, weight: .heavy)
        dataLabels0.textAlignment = .center
        ////100일 끝/////
        
        ////200일 시작 /////
        dataLabels1.text = formatter.string(from: dataPickerView.date + 86400 * 200)
        dataLabels1.textColor = .white
        dataLabels1.font = UIFont.systemFont(ofSize: 17, weight: .heavy)
        dataLabels1.textAlignment = .center
        ////200일 끝/////
        
        ////300일 시작 /////
        dataLabels2.text = formatter.string(from: dataPickerView.date + 86400 * 300)
        dataLabels2.textColor = .white
        dataLabels2.font = UIFont.systemFont(ofSize: 17, weight: .heavy)
        dataLabels2.textAlignment = .center
        ////300일 끝/////
        
        
        ////400일 시작 /////
        dataLabels3.text = formatter.string(from: dataPickerView.date + 86400 * 400)
        dataLabels3.textColor = .white
        dataLabels3.font = UIFont.systemFont(ofSize: 17, weight: .heavy)
        dataLabels3.textAlignment = .center
        ////400일 끝/////
        
        //날짜 선택 후 이미지 왼쪽 상단 dDay표시
        d_100.text = "D+100"
        d_100.textColor = .white
        d_100.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        
        d_200.text = "D+200"
        d_200.textColor = .white
        d_200.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        
        d_300.text = "D+300"
        d_300.textColor = .white
        d_300.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        
        d_400.text = "D+400"
        d_400.textColor = .white
        d_400.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        
    }
    
    
    
    
}
