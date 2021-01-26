//
//  ViewController.swift
//  ChatApp
//
//  Created by 角田幸奈 on 2020/08/26.
//  Copyright © 2020 角田幸奈. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let FaceImage:[String]=["mimi","momo","author","mimi","momo","author","mimi","momo","author","mimi","momo","author","mimi","momo","author"]
     
     
     let names:[String] = ["mimi先生", "momo先生", "author先生", "mimi先生", "momo先生","author先生","mimi先生", "momo先生", "author先生","mimi先生", "momo先生", "author先生",
         "mimi先生", "momo先生", "author先生"]
         
     
     let type:[String] =  ["タロット/手相", "オラクルカード", "スピリチュアル","タロット/手相", "オラクルカード", "スピリチュアル","タロット/手相", "オラクルカード", "スピリチュアル","タロット/手相", "オラクルカード", "スピリチュアル","タロット/手相", "オラクルカード", "スピリチュアル" ]
    
    @IBOutlet weak var CollectionView: UICollectionView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        CollectionView.delegate = self
        CollectionView.dataSource = self
        
        CollectionView.register(UINib(nibName: "Customcell", bundle: nil), forCellWithReuseIdentifier: "Customcell")
     
      
      
    }

    
    
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FaceImage.count


    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //cellの中身を設定する　　　　//dequeueReusableCellは再利用するのに必須
              let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "Customcell", for: indexPath) as! Customcell
              
              //画像と画像名をリンクさせる
              cell.TeachersImag.image = UIImage(named: FaceImage[indexPath.row])
              cell.TeachersName.text = names[indexPath.item]
              cell.Ftype.text = type[indexPath.item]
        
              
              return cell
        
        
     
        
          }
          

    
    
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            let horizontalSpace : CGFloat = 12
                  let cellSize : CGFloat = self.view.bounds.width / 3 - horizontalSpace
            return CGSize(width: cellSize, height: cellSize * 1.8)
            

        }
            


}
