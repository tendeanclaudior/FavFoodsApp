//
//  HomeView.swift
//  FavFoodsApp
//
//  Created by Claudio Tendean on 06/06/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchFood : String = ""
    
    var body: some View {
        
        NavigationView{
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .leading, spacing: 0.0){
                    HStack{
                        Image("UserPhoto")
                        Spacer()
                        VStack(alignment: .trailing){
                            Text("Howdy")
                                .font(.custom("Poppins-Regular", size: 14))
                                .foregroundColor(Color("CBCCD5"))
                            Text("Luna Polar")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("212131"))
                        }
                    }
                    
                    VStack(alignment: .center){
                        Text("What do you want\nfor lunch?")
                            .font(.custom("Poppins-Bold", size: 22))
                            .foregroundColor(Color("212131"))
                            .multilineTextAlignment(.center)
                    }
                    .frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 66,
                        maxHeight: 66
                    )
                    .padding(.top, 30)
                    
                    HStack(spacing: 0){
                        TextField("Search pizza, birger, etc....",
                                  text: $searchFood)
                        .disableAutocorrection(true)
                        .padding(.leading, 24)
                    }
                    .frame(
                        minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 50,
                        maxHeight: 50
                    )
                    .background(Color("FAFAFA"))
                    .cornerRadius(50)
                    .padding(.top, 24)
                    
                    VStack(alignment: .leading, spacing: 0.0){
                        Text("Categories")
                            .font(.custom("Poppins-SemiBold", size: 16))
                            .foregroundColor(Color("212131"))
                            .padding(.bottom, 12)
                        
                        ScrollView(.horizontal,
                                   showsIndicators: false,
                                   content: {
                            HStack{
                                HStack{
                                    Image("CateBread")
                                        .padding(.vertical, 5)
                                        .padding(.leading, 5)
                                    Text("Bread")
                                        .font(.custom("Poppins-Regular", size: 16))
                                        .padding(.trailing, 18)
                                }
                                .background(Color("FAFAFA"))
                                .cornerRadius(50)
                                
                                HStack{
                                    Image("CateCarrot")
                                        .padding(.vertical, 5)
                                        .padding(.leading, 5)
                                    Text("Healthy")
                                        .font(.custom("Poppins-Regular", size: 16))
                                        .padding(.trailing, 18)
                                }
                                .background(Color("FAFAFA"))
                                .cornerRadius(50)
                                
                                HStack{
                                    Image("CateDonut")
                                        .padding(.vertical, 5)
                                        .padding(.leading, 5)
                                    Text("Sweets")
                                        .font(.custom("Poppins-Regular", size: 16))
                                        .padding(.trailing, 18)
                                }
                                .background(Color("FAFAFA"))
                                .cornerRadius(50)
                            }
                        })
                    }
                    .padding(.top, 30)
                    
                    VStack(alignment: .leading, spacing: 0.0){
                        Text("Most Ordered")
                            .font(.custom("Poppins-SemiBold", size: 16))
                            .foregroundColor(Color("212131"))
                            .padding(.bottom, 12)
                        
                        HStack(spacing: 16){
                            Image("FoodOrange")
                            VStack(alignment: .leading){
                                Text("Orange Food")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("212131"))
                                Text("Healthy")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(Color("CBCCD5"))
                            }
                            Spacer()
                            HStack{
                                Text("4.5")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("212131"))
                                Image("IconStar")
                            }
                        }
                        .padding(.bottom, 18)
                        
                        NavigationLink(destination: DetailsView(), label: {
                            HStack(spacing: 16){
                                Image("FoodGyoza")
                                VStack(alignment: .leading){
                                    Text("Gyoza Sapi")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .foregroundColor(Color("212131"))
                                    Text("Meal")
                                        .font(.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("CBCCD5"))
                                }
                                Spacer()
                                HStack{
                                    Text("4.8")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .foregroundColor(Color("212131"))
                                    Image("IconStar")
                                }
                            }
                            .padding(.bottom, 18)
                        })
                        
                        HStack(spacing: 16){
                            Image("FoodAvocado")
                            VStack(alignment: .leading){
                                Text("Avocado Salad")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("212131"))
                                Text("Healthy")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(Color("CBCCD5"))
                            }
                            Spacer()
                            HStack{
                                Text("4.3")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("212131"))
                                Image("IconStar")
                            }
                        }
                    }
                    .padding(.top, 30)
                    
                    VStack(alignment: .leading, spacing: 0.0){
                        Text("Newest Foods")
                            .font(.custom("Poppins-SemiBold", size: 16))
                            .foregroundColor(Color("212131"))
                            .padding(.bottom, 12)
                        
                        HStack(spacing: 16.0){
                            Image("FoodOrange")
                            VStack(alignment: .leading){
                                Text("Orange Food")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("212131"))
                                Text("Heatly")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(Color("CBCCD5"))
                            }
                            Spacer()
                            HStack{
                                Text("5.5")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                Image("IconStar")
                            }
                        }
                        .padding(.bottom, 18)
                        
                        HStack(spacing: 16.0){
                            Image("FoodAvocado")
                            VStack(alignment: .leading){
                                Text("Avocado Juice")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("212131"))
                                Text("Heatly")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(Color("CBCCD5"))
                            }
                            Spacer()
                            HStack{
                                Text("5.5")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                Image("IconStar")
                            }
                        }
                    }
                    .padding(.top, 30)
                }
                .padding(.horizontal, 24)
            })
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
