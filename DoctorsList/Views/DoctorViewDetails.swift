//
//  DoctorViewDetails.swift
//  DoctorsList
//
//  Created by Poongundran Krishnamurthi on 04/06/21.
//

import SwiftUI

struct DoctorViewDetails: View {

    var doctor: DoctorsModel

    var body: some View {

        ScrollView {
            VStack (alignment: .leading) {
                Image(doctor.image)
                    .resizable()
                    .scaledToFit()
                VStack(alignment: .leading) {
                    Text("Description")
                        .font(.headline)
                        .padding ([.bottom, .top], 5)
                    ForEach (doctor.description, id:\.self) { item in
                        Text ("-" + item)
                            .padding(.bottom,1)
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationBarTitle(doctor.name)
    }
}

struct DoctorViewDetails_Previews: PreviewProvider {
    static var previews: some View {
        // Create a dummy Doctors
        
        let model = DoctorsViewModel()
        DoctorViewDetails(doctor: model.doctors[0])
    }
}
