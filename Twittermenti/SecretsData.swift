//
//  SecretsData.swift
//  Twittermenti
//
//  Created by Lyudmila Tokar on 7/26/21.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import Foundation

struct SecretsData: Decodable {
    var apiKey = ""
    var apiSecret = ""
    
    func parseSecretsPlist() -> SecretsData {
        let url = Bundle.main.url(forResource: "Secrets", withExtension: "plist")!
        let data = try! Data(contentsOf: url)
        let decoder = PropertyListDecoder()
        return try! decoder.decode(SecretsData.self, from: data)
    }
}

