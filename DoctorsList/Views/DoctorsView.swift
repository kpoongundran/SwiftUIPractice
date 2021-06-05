//
//  ContentView.swift
//  DoctorsList
//
//  Created by Poongundran Krishnamurthi on 03/06/21.
//

import SwiftUI

struct DoctorsView: View {
    
    @ObservedObject var viewModel = DoctorsViewModel()
    
    var body: some View {
        
        NavigationView {
            List (viewModel.doctors) { r in
                
                NavigationLink(destination: DoctorViewDetails(doctor: r), label: {
                    HStack (spacing: 20.0) {
                        Image (r.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width:50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        VStack(alignment: .leading) {
                            Text(r.name)
                                .font(.title)
                            Text(r.qualification)
                                .font(.footnote)
                            Text(r.specialist)
                                .font(.footnote)
                            Text(r.experience)
                                .font(.footnote)
                            Text(r.city)
                                .font(.footnote)
                            Text(r.language)
                                .font(.footnote)
                        }
                    }
                })
            }.navigationBarTitle("Doctors list")
        }
    }
}

struct DoctorsView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorsView()
    }
}
