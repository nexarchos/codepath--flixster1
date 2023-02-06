//
//  DetailViewController.swift
//  Flixster1
//
//  Created by Nicole Exarchos on 2/4/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    // Do any additional setup after loading the view.
    var movie: Movie = Movie(
        title: "Avatar ", posterimage:
        URL(string: "https://image.tmdb.org/t/p/w780/bOGkgRGdhrBYJSLpXaxhXVstddV.jpg")!,
       partialdescription: " ",
       fulldescription: " ", backdropimage:
        URL(string: "https://image.tmdb.org/t/p/w780/bOGkgRGdhrBYJSLpXaxhXVstddV.jpg")!,
       voteaverage: "90",
       votecount: "80",
       popularity: "100"
        )
    
    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var voteAverage: UILabel!
    
    @IBOutlet weak var voteCount: UILabel!
    
    @IBOutlet weak var moviePopularity: UILabel!
    
    @IBOutlet weak var fullDescription: UILabel!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            

            // Load the image located at the `artworkUrl100` URL and set it on the image view.
                Nuke.loadImage(with: movie.backdropimage, into: movieImage)

                // Set labels with the associated track values.
                movieTitle.text = movie.title
                voteAverage.text = movie.voteaverage
                voteCount.text = movie.votecount
                moviePopularity.text = movie.popularity
                fullDescription.text = movie.fulldescription
  
        }
    
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


