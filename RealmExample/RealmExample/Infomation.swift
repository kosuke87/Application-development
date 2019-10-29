//
//  Infomation.swift
//  RealmExample
//
//  Created by kiwamu iha on 2019/10/10.
//  Copyright © 2019 kiwamu iha. All rights reserved.
//

import UIKit
import RealmSwift

//let realm = try! Realm()
//let tanaka = realm.objects(Acount.self)

class Infomation: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let realm = try! Realm()
        let tanaka = realm.objects(Acount.self)
        var obj_name = ""
        var obj_pass = ""
        if let obj = tanaka.last {
            obj_name = obj.name
            obj_pass = obj.pass
         }
        acountName.text = obj_name
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var acountName: UITextField!
    //let obj = tanaka.last
    //acountName = obj.name
    
    //var obj_name = ""
    //var obj_pass = ""
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
