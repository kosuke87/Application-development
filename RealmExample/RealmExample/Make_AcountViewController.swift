//
//  Make_AcountViewController.swift
//  RealmExample
//
//  Created by kiwamu iha on 2019/10/10.
//  Copyright © 2019 kiwamu iha. All rights reserved.
//

import UIKit
import RealmSwift

class Make_AcountViewController: UIViewController {

    override func viewDidLoad() {
        //self.age.keyboardType = UIKeyboardType.numberPad
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var pass1: UITextField!
    
    @IBOutlet weak var pass2: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var sex: UITextField!
    
    // 文字列保存用の変数
    var nametext = ""
    var pass1text = ""
    var pass2text = ""
    var agetext = ""
    var sextext = ""
    
    @IBAction func add_acount(_ sender: Any) {
        // TextFieldから文字を取得
        nametext = name.text!
        pass1text = pass1.text!
        agetext = age.text!
        sextext = sex.text!
        
        let realm = try! Realm()
        
        let tanaka = Acount()
        tanaka.name = nametext
        tanaka.pass = pass1text
        tanaka.age = agetext
        tanaka.sex = sextext
        
        try! realm.write() {
            realm.add(tanaka)
        }
        
        // TextFieldの中身をクリア
        name.text = ""
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
