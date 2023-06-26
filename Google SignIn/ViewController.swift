//
//  ViewController.swift
//  Google SignIn
//
//  Created by Mac on 25/06/23.
//

import UIKit
import GoogleSignIn
class ViewController: UIViewController {
    let signInConfig = GIDConfiguration.init(clientID: "414844892680-v5snlc4kn6jn7rreob7m1kt92glc9aij.apps.googleusercontent.com")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func googleSignIn(_ sender: Any) {
        GIDSignIn.sharedInstance.signIn(with: signInConfig,presenting: self) { signInResult, error in
            guard error == nil else { return }
            let user = signInResult?.userID
            let emailAddress = signInResult?.profile?.email
    }
    
}
}
//kalamkarpooja01@gmail.com
//Pooja@1234
