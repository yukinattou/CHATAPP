//
//  SearchViewController.swift
//  ChatApp
//
//  Created by 角田幸奈 on 2021/03/18.
//  Copyright © 2021 角田幸奈. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController,UITableViewDelegate, UITableViewDataSource{
    
    
    
    let selectmyList:[String] = ["お悩み", "占術", "先生の特徴", "鑑定スタイル"]
    var chosenCell: Int!

    
    @IBOutlet weak var mytableview: UITableView!
    
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        mytableview.dataSource = self
        mytableview.delegate = self
        
        self.mytableview.register(UINib(nibName: "SerectTableViewCell", bundle: nil), forCellReuseIdentifier: "mycell")

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return selectmyList.count
        }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = mytableview.dequeueReusableCell(withIdentifier: "mycell", for: indexPath) as!SerectTableViewCell
       
        cell.Category.text = selectmyList[indexPath.item]
            return cell
             }
    

       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           // 選択されたcellの番号を記憶
        chosenCell = indexPath.row
           // 画面遷移の準備
           performSegue(withIdentifier: "toSecond",sender: nil)
       }

       // Segue 準備
       override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
           // 遷移先のViecControllerのインスタンスを生成
           let secVC: SecondTavleViewController = (segue.destination as? SecondTavleViewController)!
           // secondViewControllerのgetCellに選択された画像を設定する
           secVC.getCell = chosenCell

       }
        }

             
         

   

  


