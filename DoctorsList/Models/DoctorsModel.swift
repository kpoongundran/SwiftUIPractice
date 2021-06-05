//
//  DoctorsModel.swift
//  DoctorsList
//
//  Created by Poongundran Krishnamurthi on 03/06/21.
//

import Foundation

class DoctorsModel: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var image: String
    var qualification: String
    var experience: String
    var specialist: String
    var city: String
    var language: String
    var description: [String]
}
