//
//  DoctorsViewModel.swift
//  DoctorsList
//
//  Created by Poongundran Krishnamurthi on 03/06/21.
//

import Foundation

class DoctorsViewModel: ObservableObject {
    @Published var doctors = [DoctorsModel]()
    
    //Create an instance of the Data Service and get the data
    init() {
       self.doctors = DataService.getLocalData()
    }
    
}
