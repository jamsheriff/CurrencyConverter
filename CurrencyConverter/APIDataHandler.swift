//
//  APIDataHandler.swift
//  CurrencyConverter
//
//  Created by Sherif Musa on 02.03.2020.
//  Copyright © 2020 Sherif Musa. All rights reserved.
//

import Foundation

struct ConvertData: Decodable {
    let timestamp: Int
    let rates: [String: Double]
}

struct Currencies: Decodable {
    let symbols: [String : String]
}

class APIDataHandler{
    
    func getDataFromURL(urlString: String, completionHandler: @escaping ((ConvertData) -> Void)) {
        let url = URL(string: urlString)
        //Get the json data from the URL
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do {
                //Decode retrived data with JSONDecoder
                //general Decodable.Type isn't enough so I need the concrete Decodable type
                
                //If There is no data, present an alert to the user
                if (data != nil){
                    let output = try JSONDecoder().decode(ConvertData.self, from: data!)
                    //Call completion handler to tell that async fxn is done
                    completionHandler(output)
                }
            } catch let jsonError {
                print(jsonError)
            }
        }.resume()
    }
    
    func getAvailableCurrencies(apiKey: String, completionHandler: @escaping ((Currencies) -> Void)) {
        let url = URL(string: "http://data.fixer.io/api/symbols?access_key=\(apiKey)")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do {
                //Decode retrived data with JSONDecoder
                //general Decodable.Type isn't enough so I need the concrete Decodable type
                let output = try JSONDecoder().decode(Currencies.self, from: data!)
                
                //Call completion handler to tell that async fxn is done
                completionHandler(output)
                
            } catch let jsonError {
                print(jsonError)
            }
        }.resume()
    }
}
