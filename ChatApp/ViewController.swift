//
//  ViewController.swift
//  ChatApp
//
//  Created by 角田幸奈 on 2020/08/26.
//  Copyright © 2020 角田幸奈. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
    
    
    @IBOutlet weak var offheart: UIButton!
    
    
    
    //要素の数.画像の数に設定
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FaceImage.count
    }
    
    
    //stroyboardのcellに設定したIdentifierをここで取得。ソース内で関連付ける
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       //cellの中身を設定する　　　　//dequeueReusableCellは再利用するのに必須
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        
      
        //画像と画像名をリンクさせる
        cell.TeachersImag.image=UIImage(named: FaceImage[indexPath.row])
        
        cell.TeachersName.text = names[indexPath.item]
        
        cell.Ftype.text = type[indexPath.item]
        
        return cell
    }
    //セルのサイズ
    func collectionView(_collectionView: UICollectionView,layout collectionViewlayout:UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize {
           
        //CGSizeは幅と高さの情報を保持する構造体
           let collectionwidth=CollectionView.bounds.width
           return CGSize(width: collectionwidth/3, height: collectionwidth/3)
    }
    
    //// 垂直方向におけるセル間のマージン
       internal func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
           return 2
       
       }
    
    // 水平方向におけるセル間のマージン
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    // セルの左右に
            return 2
        }
       
    
    
    
       
    //外枠のマージン
       func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
       return UIEdgeInsets(top: 3, left: 3, bottom: 10, right: 3)
       }
      


    
    @IBOutlet weak var CollectionView: CollectionView!
    @IBOutlet weak var collectionviewflow: UICollectionViewFlowLayout!
    
    
   
    override func viewDidLoad() {
           super.viewDidLoad()
           self.offheart.setImage(UIImage(systemName: "heart"), for: .normal);
           self.offheart.setImage(UIImage(systemName: "heart.fill"), for: .selected)
       }


    @IBAction func onheart(_ sender: UIButton) {
    
           sender.isSelected = !sender.isSelected;
       }
   }
    
    
    
let FaceImage:[String]=["mimi","momo","author","mimi","momo","author","mimi","momo","author"]


let names:[String] = ["mimi先生", "momo先生", "author先生", "mimi先生", "momo先生", "author先生","mimi先生", "momo先生", "author先生", ]

let type:[String] =  ["タロット/手相", "オラクルカード", "スピリチュアル","タロット/手相", "オラクルカード", "スピリチュアル","タロット/手相", "オラクルカード", "スピリチュアル", ]


        
  
    

   

