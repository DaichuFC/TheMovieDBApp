//
//  PerfilViewController.swift
//  TheMovieDB
//
//  Created by Dai Flores on 17/08/22.
//

import UIKit

class PerfilViewController: UIViewController {
    
    @IBOutlet weak var lbluserName: UILabel!
    @IBOutlet weak var fcollection: UICollectionView!
    
    var dataList = [Result]()
    var nameUse = ""
//    let myRealApiUrl =  "https://api.themoviedb.org/3/movie/upcoming?api_key=c7f7d1dc5a6aa58fd2f3602748ad9c64&language=en-US&page=1"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbluserName.text = nameUse
        
//        URLSession.shared.dataTask(with: URLRequest(url: URL(string: myRealApiUrl)!)){
//            (data, req, error) in
//            
//            do{
//                let resu = try JSONDecoder().decode(MoviesResult.self, from: data!)
//                DispatchQueue.main.async {
//                    print("Estoy Dentro")
//                    self.dataList = resu.results
//                    self.fcollection.reloadData()
//                }
//            }catch{
//                print("No estoy dentro")
//            }
//        }.resume()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
