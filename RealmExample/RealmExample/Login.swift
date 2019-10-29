//
//  Login.swift
//  RealmExample
//
//  Created by kiwamu iha on 2019/10/10.
//  Copyright © 2019 kiwamu iha. All rights reserved.
//

import UIKit
import RealmSwift

class Login: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var login_name: UITextField!
    
    @IBOutlet weak var login_pass: UITextField!
    
    // 文字列保存用の変数
    var nametext = ""
    var passtext = ""
    
    @IBAction func login_act(_ sender: Any) {
        // TextFieldから文字を取得
        nametext = login_name.text!
        passtext = login_pass.text!
        
        let realm = try! Realm()
        let tanaka = realm.objects(Acount.self)
        
        var obj_name = ""
        var obj_pass = ""
        
        if let obj = tanaka.last {
            obj_name = obj.name
            obj_pass = obj.pass
        }
        print(tanaka)
        if obj_name == nametext && obj_pass == passtext {
            performSegue(withIdentifier: "toSecond", sender: nil)
            print(obj_name,obj_pass)
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

}
