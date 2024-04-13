//
//  File.swift
//  Homework
//
//  Created by Nodir on 12/04/24.
//

import Foundation
class Post{
    var fullname: String? = ""
    var personImage: String? = ""
    var contentImage1: String? = ""
    var contentImage2: String? = ""
    
    init(fullname: String, personImage: String, contentImage1: String, contentImage2: String) {
        self.fullname = fullname
        self.personImage = personImage
        self.contentImage1 = contentImage1
        self.contentImage2 = contentImage2
    }
}
