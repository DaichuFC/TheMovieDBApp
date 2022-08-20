//
//  TVShowsViewController.swift
//  TheMovieDB
//
//  Created by Dai Flores on 16/08/22.
//

import UIKit
import FirebaseAuth

//enum ProviderType: String{
//    case basic
//}

class TVShowsViewController: UIViewController {

    @IBOutlet var viewTVShows: UIView!
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    @IBOutlet weak var mCollection: UICollectionView!
    
    var nameUser: String!
//    init(username: String){
//        self.nameUser = username
//        super.init(nibName: nil, bundle: nil)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//       super.init(coder: aDecoder)
//    }
//    init(){
//        super.init(nibName: nil, bundle: nil)
//    }
//    required init?(coder aDecoder: NSCoder) {
//           super.init(coder: aDecoder)
//        }

    var dataList = [Result]()
    var p = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewTVShows.backgroundColor = .black

        mCollection.backgroundColor = .black
        mCollection.dataSource = self
        mCollection.delegate = self
        mCollection.register(UINib(nibName: "ShowsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MyCelda")
        
        segmentOutlet.backgroundColor = .darkGray
        segmentOutlet.setTitle("Popular", forSegmentAt: 0)
        segmentOutlet.setTitle("TopRated", forSegmentAt: 1)
        segmentOutlet.setTitle("On TV", forSegmentAt: 2)
        segmentOutlet.setTitle("Airing Today", forSegmentAt: 3)
        
        let myRealApiUrl =  "https://api.themoviedb.org/3/movie/upcoming?api_key=c7f7d1dc5a6aa58fd2f3602748ad9c64&language=en-US&page=1"
        
//        let apiUrl = "https://api.themoviedb.org/3/movie/upcoming?api_key=481d0252b35b54c19272fdd5502cb7e8&language=en-US&page=1"

        URLSession.shared.dataTask(with: URLRequest(url: URL(string: myRealApiUrl)!)){
            (data, req, error) in
            
            do{
                let resu = try JSONDecoder().decode(MoviesResult.self, from: data!)
                DispatchQueue.main.async {
                    print("Estoy Dentro")
                    self.dataList = resu.results
                    self.mCollection.reloadData()
                }
            }catch{
                print("No estoy dentro")
            }
        }.self.resume()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Perfil"{
            let viewPerfil = segue.destination as! PerfilViewController
            viewPerfil.nameUse = nameUser!
        }
    }
    
    @IBAction func btnOption(_ sender: Any) {
        
        let alert = UIAlertController(title: "", message: "What do you want to do?", preferredStyle: .alert)
        
        let btnActionPerfil = UIAlertAction(title: "Perfil", style: .default, handler: {action in
        self.performSegue(withIdentifier: "Perfil", sender: nil)
        })
        let btnActionLogOut = UIAlertAction(title: "Log out", style: .destructive, handler: {action in
        self.navigationController?.popViewController(animated: true)
        })
        let btnActionCancel = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        
        alert.addAction(btnActionPerfil)
        alert.addAction(btnActionLogOut)
        alert.addAction(btnActionCancel)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        p = dataList.startIndex
        p = sender.selectedSegmentIndex
        mCollection.reloadData()
        
//        if sender.selectedSegmentIndex == 0 {
//
//        }else if sender.selectedSegmentIndex == 1{
//
//        }else if sender.selectedSegmentIndex == 2{
//
//
//        }else if sender.selectedSegmentIndex == 3{
//
//
//        }else{
//
//            }
        }
}
