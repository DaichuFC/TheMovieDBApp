//
//  FavoriteCollectionViewCell.swift
//  TheMovieDB
//
//  Created by Dai Flores on 17/08/22.
//

import UIKit

class FavoriteCollectionViewCell: UICollectionViewCell{
    
    @IBOutlet weak var favoriteImage: UIImageView!
    @IBOutlet weak var favortieTitle: UILabel!
    @IBOutlet weak var favortieDate: UILabel!
    @IBOutlet weak var favortieRated: UILabel!
    @IBOutlet weak var FavoriteDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
//    func outInfos(data: Result){
//        
//        favortieTitle.text = data.title
//        favortieDate.text = data.releaseDate
//        favortieRated.text = "⭐️\(data.voteAverage)"
//        FavoriteDescription.text = data.overview
//        
//        URLSession.shared.dataTask(with: URLRequest(url: URL(string: "https://image.tmdb.org/t/p/w342/\(data.posterPath)")!)){
//            (data, req, error) in
//            
//            do{
//                let dataIm = try data
//                DispatchQueue.main.async {
//                    self.favoriteImage.image = UIImage(data: dataIm!)
//                }
//            }catch{
//                
//            }
//        }.resume()
//    }
}

