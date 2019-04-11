//
//  MessageViewController.swift
//  KNight
//
//  Created by Nhu Nguyen on 4/11/19.
//  Copyright © 2019 Nhu Nguyen. All rights reserved.
//

import UIKit
import MessageUI

class MessageViewController: UIViewController, MFMessageComposeViewControllerDelegate {
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        switch (result)
        {
        case .cancelled:
            print("Message was cancelled")
            dismiss(animated: true, completion: nil)
        case .failed:
            print("Message failed")
            dismiss(animated: true, completion: nil)
        case .sent:
            print("Message sent")
            dismiss(animated: true, completion: nil)
        default:
            break
        }
    }
    
    @IBAction func sendMessage(_ sender: Any) {
        let messageViewController = MFMessageComposeViewController()
        messageViewController.body = "This is a message";
        messageViewController.recipients = ["4088878326"]
        messageViewController.messageComposeDelegate = self
        
        self.present(messageViewController, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
