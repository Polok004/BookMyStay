//
//  ListingDetailView.swift
//  BookMyStay
//
//  Created by Shoumik Barman Polok on 12/11/24.
//

import SwiftUI

struct ListingDetailView: View {
    
    var images = [
        "Hotel1",
        "Hotel2",
        "Hotel3",
        "Hotel4",
        "Hotel5",
        "Hotel6",
        "Hotel7",
        
    ]
    
    var body: some View {
        ScrollView{
            ListingImage()
                .frame(height: 320)
            
            VStack(alignment:.leading,spacing: 8){
                Text("Hotel Villa")
                    .font(.title)
                    .fontWeight(.bold)
                
                
                VStack(alignment:.leading){
                    HStackLayout(spacing:2){
                        Image(systemName: "star.fill")
                        Text("4.96")
                        Text(" - ")
                        Text("30 Reviews")
                            .underline()
                            .fontWeight(.semibold)
                        
                    }
                    .foregroundStyle(.black)
                    
                    Text("Cox Bazar ,Chittagong")
                    
                    
                }
                .font(.caption)
                
            }
            .padding(.leading)
            .frame(maxWidth:.infinity,alignment: .leading)
            
            Divider()
            
            HStack{
                VStack(alignment: .leading,spacing:4){
                    Text("Hotel Villa Hosted By John Cena")
                        .font(.headline)
                        .frame(width:250,alignment:.leading)
                    
                    HStack(spacing:2){
                        Text("4 guest -")
                        Text("4 bedrooms -")
                        Text("3 bathrooms -")
                        Text("1 kitchen -")
                        
                        
                        
                    }
                    .font(.caption)
                }
                .frame(width: 300,alignment:.leading)
                
                Spacer()
                
                Image("Polok")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64,height: 64)
                    .clipShape(.circle)
                
            }
            .padding()
            
            Divider()
           
            VStack(alignment:.leading,spacing:16){
                ForEach(0 ..< 2){ feature in
                    HStack(spacing: 12){
                        Image(systemName: "model")
                        
                        VStack(alignment:.leading,spacing:1){
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhost are experienced, highly rated hosts who have\nbeen trusted by millions of guests.")
                                .font(.caption)
                                .foregroundStyle(.gray)
                            
                        }
                        Spacer()
                            
                    }
                }
            }
        }
    }
}
#Preview {
    ListingDetailView()
}
