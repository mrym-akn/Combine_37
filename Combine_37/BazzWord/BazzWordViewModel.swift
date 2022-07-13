//
//  JokeListViewModel.swift
//  Combine_37
//
//  Created by cmStudent on 2022/07/13.
//

import SwiftUI
import Combine

final class BazzWordViewModel: ObservableObject{
    @Published var bazzWord = "投稿を表示するよ";
    var cancellable: [AnyCancellable] = []
    
    deinit {
           cancellable.forEach { cancellable in
               cancellable.cancel()
           }
       }
    
    func fetchWord(){
        guard let url = URL(string: "https://corporatebs-generator.sameerkumar.website/") else {
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        URLSession.shared.dataTaskPublisher(for: urlRequest)
            .tryMap { (data : Data, _: URLResponse) in return data }
            .decode(type: BazzWordModel.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion{
                case .finished:
                    print("finish")
                case .failure(let error):
                    print(error)
                }
            }, receiveValue: {[weak self] response in
                self?.bazzWord = response.phrase
            })
            .store(in: &cancellable)
        
    }
}
