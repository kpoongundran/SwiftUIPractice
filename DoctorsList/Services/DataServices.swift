//
//  DataServices.swift
//  DoctorsList
//
//  Created by Poongundran Krishnamurthi on 04/06/21.
//

import Foundation

class DataService {
    static func getLocalData() -> [DoctorsModel] {
        // Parse Local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "doctors", ofType: "json")
        
        // Check if pathString is not Nil, otherwise
        guard pathString != nil else {
            return [DoctorsModel]()
        }
        
        // Create a URL object
        let url = URL(fileURLWithPath: pathString!)
        
        // Create a data object
        
        do {
            let data = try Data(contentsOf: url)
            
            //Decode the data with the JSON decoder
            let decoder = JSONDecoder()
            
            do {
                let doctorData = try
                    decoder.decode([DoctorsModel].self, from: data)
                
                //Add the unique IDS
                for r in doctorData {
                    r.id = UUID()
                }
                
                // Return the Doctors
                return doctorData
            }
            catch {
                print (error)
            }
            
        }
        catch {
            print (error)
        }
        return [DoctorsModel]()
    }
}
