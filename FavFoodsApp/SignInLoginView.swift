//
//  SignInLoginView.swift
//  FavFoodsApp
//
//  Created by Claudio Tendean on 24/06/23.
//

import SwiftUI

struct SignInLoginView: View {
    
    @State private var showGetStartedPage = false
    
    var body: some View {
        
        return Group {
            if showGetStartedPage {
                GetStartedView()
            } else {
                VStack(spacing: 0.0){
                    Text("Order Your\nFavorite Foods")
                        .font(.custom("Poppins-Bold", size: 26))
                        .foregroundColor(Color("212131"))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                    Text("Sign up to get your foods faster\nand better than before")
                        .font(.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("CBCCD5"))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 50)
                    Image("OnboardingIllustration2")
                        .padding(.bottom, 50)
                    
                    Button(action: {print("OK")}, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 50)
                                .frame(height: 50)
                                .foregroundColor(Color("FFC535"))
                            Text("Create New Account")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("212131"))
                        }
                    })
                    .padding(.bottom, 10)
                    
                    Button(action: {
                        print("OK")
                        self.showGetStartedPage = true
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 50)
                                .frame(height: 50)
                                .foregroundColor(Color("FAFAFA"))
                            Text("Sign In")
                                .font(.custom("Poppins-Medium", size: 16))
                                .foregroundColor(Color("212131"))
                        }
                    })
                    .padding(.bottom, 30)
                    
                    Button(action: {print("OK")}, label: {
                        Text("Terms & Conditions")
                            .font(.custom("Poppins-Regular", size: 16))
                            .foregroundColor(Color("AAAAAC"))
                            .underline()
                    })
                }
                .padding(.horizontal, 24)
            }
        }
    }
}

struct SignInLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SignInLoginView()
    }
}
