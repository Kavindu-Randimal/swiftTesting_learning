//
//  GetResponse.swift
//  AFSample
//
//  Created by Randimal Geeganage on 10/5/20.
//  Copyright © 2020 com.sample. All rights reserved.
//

import Foundation

struct GetResonse: Decodable {
    let Data: Data?
    let Ad: Ad?
    
    enum CodingKeys: String, CodingKey {
        case Data = "data"
        case Ad = "ad"
    }
}

struct Data: Decodable {
    let id: Int?
    let email: String?
    let first_name: String?
    let last_name: String?
    let avatar: String?
}

struct Ad: Decodable {
    let company: String?
    let url: String?
    let text: String?
}
