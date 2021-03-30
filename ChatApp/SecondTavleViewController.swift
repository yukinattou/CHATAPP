//
//  SecondTavleViewController.swift
//  ChatApp
//
//  Created by 角田幸奈 on 2021/03/30.
//  Copyright © 2021 角田幸奈. All rights reserved.
//

import UIKit

class SecondTavleViewController: UIViewController,UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var SecondTableView: UITableView!
    
    var getCell: Int!
    
    let troublesArray: [String] = ["恋愛", "仕事", "対人関係", "将来の不安","深層心理" ]
        // お悩み
        let typeArray: [String] = ["タロット", "思念伝達", "オラクルカード", "手相","深層心理","スピリチュアル","全てにチェック"]
        // 占術
        let characteristicArray: [String] = ["女性鑑定師", "男性鑑定師", "丁寧", "優しい", "辛口", "鑑定歴３年以上", ]
        // 特徴
        let WayToContactArray: [String] = ["チャット", "電話", "メッセージ", ]
        // 連絡方法
    var arrayLength: Int!


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        SecondTableView.register(UINib(nibName: "SecondTableViewCell", bundle: nil),forCellReuseIdentifier: "detail")

                SecondTableView.delegate = self
                SecondTableView.dataSource = self
        
        
        switch getCell {
                    // 0のとき
                case 0:
                    arrayLength = troublesArray.count
                    // 1のとき
                case 1:
                    arrayLength = typeArray.count
                    // 2のとき
                case 2:
                    arrayLength = characteristicArray.count
                    // 3のとき
                case 3:
                    arrayLength = WayToContactArray.count
                    // 4のとき
              
                default:
                    break
                }

    
    }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrayLength
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
            let cell = SecondTableView.dequeueReusableCell(withIdentifier: "mycell2", for: indexPath) as!ATableViewCell
       

            cell.detail.text = troublesArray[indexPath.item]
            return cell
        
        
        }
    
}
