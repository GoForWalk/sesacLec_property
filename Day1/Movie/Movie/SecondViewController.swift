//
//  SecondViewController.swift
//  Movie
//
//  Created by sae hun chung on 2022/07/05.
//

import UIKit

class SecondViewController: UIViewController {
    
    // 아웃렛 변수
    @IBOutlet weak var mainBannerImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    let movieList: [String] = ["국제시장", "택시운전사", "암살", "명량", "알라딘"]

    // 뷰 컨트롤러 생명주기
    // 뷰가 첫 실행 직전에 한번 실행되는 코드
    override func viewDidLoad() {
        super.viewDidLoad()

        mainBannerImageView.image = UIImage(named: movieList.randomElement()!)
        mainBannerImageView.layer.cornerRadius = 20
        mainBannerImageView.layer.borderWidth = 5
        mainBannerImageView.layer.borderColor = UIColor.blue.cgColor
        
        movieTitleLabel.text = "국제시장"
        movieTitleLabel.backgroundColor = .lightGray
        movieTitleLabel.textColor = .darkGray
        movieTitleLabel.font = .boldSystemFont(ofSize: 30)
        movieTitleLabel.textAlignment = .center
    }
    
    // 동작하는 기능
    @IBAction func movieButtonTapped(_ sender: UIButton) {
        // 버튼 탭하는 경우, 로직 설정 가능
        
        mainBannerImageView.image = UIImage(named: movieList.randomElement()!)
        
    }//: movieButtonTapped()
    
    
}//: SecondViewController
