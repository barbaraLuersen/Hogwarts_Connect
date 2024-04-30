//
//  ViewModel.swift
//  6-API
//
//  Created by Turma02-5 on 05/04/24.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var grifinoria: [Chars] = []
    @Published var sonserina: [Chars] = []
    @Published var corvinal: [Chars] = []
    @Published var lufaLufa: [Chars] = []
    
    func fetchGrifinoria(){
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters/house/gryffindor") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let parsed = try JSONDecoder().decode([Chars].self, from: data)
                DispatchQueue.main.async{
                    self?.grifinoria = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    func fetchSonserina(){
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters/house/slytherin") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let parsed = try JSONDecoder().decode([Chars].self, from: data)
                DispatchQueue.main.async{
                    self?.sonserina = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    func fetchCorvinal(){
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters/house/ravenclaw") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let parsed = try JSONDecoder().decode([Chars].self, from: data)
                DispatchQueue.main.async{
                    self?.corvinal = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    func fetchLufaLufa(){
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters/house/hufflepuff") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let parsed = try JSONDecoder().decode([Chars].self, from: data)
                DispatchQueue.main.async{
                    self?.lufaLufa = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
