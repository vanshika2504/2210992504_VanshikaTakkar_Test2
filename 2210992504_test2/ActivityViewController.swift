//
//  ActivityViewController.swift
//  2210992504_test2
//
//  Created by Vanshika on 23/11/24.
//

import UIKit
import MessageUI

class ActivityViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var shareButtonTapped: UIButton!
    @IBOutlet weak var uploadButtonTapped: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var email: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func share(_ sender: UIButton) {
        guard let image = imageView.image else {return}
        let activityController = UIActivityViewController (activityItems: [image], applicationActivities: nil)
        present(activityController, animated: true, completion: nil)
    }
    
    @IBAction func cameraButtonTapped(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let cameraAction = UIAlertAction(title: "camera", style: .default, handler: {action in print("camera choosen")
                imagePicker.sourceType = .camera
                self.present(imagePicker, animated: true, completion: nil)
            })
            alertController.addAction(cameraAction)
        }
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let photoLibrary = UIAlertAction(title: "Photo Library", style: .default, handler: {action in print("choosen photo library")
                imagePicker.sourceType = .photoLibrary
                self.present(imagePicker, animated: true, completion: nil)
            })
            alertController.addAction(photoLibrary)
            
        }
        present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func emailButtonTapped(_ sender: UIButton) {
        guard MFMailComposeViewController.canSendMail() else {printContent("not able to send mail")
        return}
        let mailComposer = MFMailComposeViewController()
        mailComposer.setSubject("share recipe")
        mailComposer.setToRecipients(["vanshika2504.be22@chitkara.edu.in"])
        mailComposer.setMessageBody("You can share recepies", isHTML: false)
        present(mailComposer, animated: true, completion: nil)
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
