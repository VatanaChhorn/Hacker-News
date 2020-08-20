//
//  NetworkManager.swift
//  Hacker News
//
//  Created by Chhorn Vatana on 7/17/20.
//  Copyright © 2020 Chhorn Vatana. All rights reserved.
//

import Foundation

//MARK: - IMPORTANT PART
class NetworkManager: ObservableObject {
    
  @Published var posts = [Post]()
    
//MARK: - IMPORTANT PART
    
    func fetchData()  {
        
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page")
        {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url){ (data, response, error) in
                if error == nil
                {
                    if let safedata = data
                    {
                        let decoder = JSONDecoder()
                        do
                        {
                            //MARK: - IMPORTANT PART
                            let decodedData = try decoder.decode(Result.self, from: safedata)
                            DispatchQueue.main.async {
                                   self.posts = decodedData.hits
                            //MARK: - IMPORTANT PART
                            }
                        } catch
                        {
                            print(error)
                        }
                    }
                }
                
            }
            task.resume()
        }
    }
    
    
}
