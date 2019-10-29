//
//  User.swift
//  RealmExample
//
//  Created by kiwamu iha on 2019/10/09.
//  Copyright © 2019 kiwamu iha. All rights reserved.
//

import Foundation
import RealmSwift

class Acount: Object {
    @objc dynamic var name = ""
    @objc dynamic var pass = ""
    @objc dynamic var age  = ""
    @objc dynamic var sex  = ""
}
