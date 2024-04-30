//
//  Model.swift
//  6-API
//
//  Created by Turma02-5 on 05/04/24.
//

import Foundation

struct Chars: Codable, Identifiable{
    let id: String
    let name: String?
    let alternate_names: [String]?
    let species: String?
    let gender: String?
    let house: String?
    let dateOfBirth: String?
    let yearOfBirth: Int?
    let wizard: Bool?
    let ancestry: String?
    let eyeColour: String?
    let hairColour: String?
    let wand: Wand
    let patronous: String?
    let hogwartsStudent: Bool?
    let hogwartsStaff: Bool?
    let actor: String?
    let alternative_actor:[String]?
    let alive: Bool?
    let image: String?
}

struct Wand: Codable{
    let wood: String?
    let core: String?
    let length: Double?
}
