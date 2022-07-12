//
//  JokeViewModel.swift
//  Combine_37
//
//  Created by cmStudent on 2022/07/12.
//

import Foundation
import Combine

final class JokeViewModel: ObservableObject{
    @Published var joke: String = "ボタンを押してね"
    var id : String = ""
    
    var cancellable: [AnyCancellable] = []
    
    deinit {
           cancellable.forEach { cancellable in
               cancellable.cancel()
           }
       }
    
    func fetchJoke() {
        guard let url = URL(string: "https://icanhazdadjoke.com/") else {
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        
        URLSession.shared.dataTaskPublisher(for: urlRequest)
            .tryMap { (data: Data, _: URLResponse) in return data }
            .decode(type: JokeData.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion{
                case .finished:
                    print("finish")
                case .failure(let error):
                    print(error)
                }
            }, receiveValue: {[weak self] response in
                self?.joke = response.joke
                self?.id = response.id
            })
            .store(in: &cancellable)
    }
    
}
