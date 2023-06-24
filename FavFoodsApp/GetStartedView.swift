//
//  GetStartedView.swift
//  FavFoodsApp
//
//  Created by Claudio Tendean on 05/06/23.
//

import SwiftUI

struct GetStartedView: View {
    
    @State private var showHomePage = false
    
    var body: some View {
        
        return Group {
            if showHomePage {
                HomeView()
            }
            else {
                VStack(spacing: 0){
                    Image("OnboardingIllustration")
                        .padding(.bottom, 50)
                    HStack{
                        VStack(alignment: .leading, spacing: 0){
                            Text("180K Store")
                                .font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("AAAAAC"))
                            Text("Order Your\nFavorite Foods")
                                .font(.custom("Poppins-Bold", size: 36))
                                .foregroundColor(Color("212131"))
                            Button(action: {
                                print("OK")
                                self.showHomePage = true
                            },
                                   label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 50)
                                        .frame(width: 327, height: 50)
                                        .foregroundColor(Color("FF815E"))
                                    Text("Explore Now")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .foregroundColor(Color("FFFFFF"))
                                }
                            })
                            .padding(.top, 30)
                        }
                    }
                }
            }
        }
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
