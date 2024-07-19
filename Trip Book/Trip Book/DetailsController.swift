//
//  DetailsController.swift
//  Trip Book
//
//  Created by Yagmur on 19.07.2024.
//

import UIKit

class DetailsController: UIViewController {

    @IBOutlet weak var header: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var article: UILabel!
    
    
    var selectedHeader = ""
    var selectedImage = UIImage()
    var selectedArticle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        header.text = selectedHeader
        image.image = selectedImage
        article.text = selectedArticle
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
