//
//  DetailViewController.swift
//  AppleNewsFeed
//
//  Created by l.vladislava on 12/02/2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    var webUrlString = String()
    var titleString = String()
    var contentString = String()

    @IBOutlet weak var contentTextView: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "APPLE"
        print(webUrlString)
        
        titleLabel.text = titleString
        contentTextView.text = contentString
        
    }
    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        let destination: WebViewViewController = segue.destination as! WebViewViewController
        // Pass the selected object to the new view controller.
        destination.urlString = webUrlString
    }
   

}
