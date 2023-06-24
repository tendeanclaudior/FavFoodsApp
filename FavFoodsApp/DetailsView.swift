//
//  DetailsView.swift
//  FavFoodsApp
//
//  Created by Claudio Tendean on 23/06/23.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            Image("GyozaPhoto")
                .padding(.top, 30)
                .padding(.bottom, 20)
            VStack(alignment: .leading, spacing: 0.0) {
                HStack(spacing: 0.0){
                    VStack(alignment: .leading, spacing: 0.0){
                        Text("Gyoza Sapi")
                            .font(.custom("Poppins-Bold", size: 22))
                            .foregroundColor(Color("212131"))
                        Text("Meal")
                            .font(.custom("Poppins-Regular", size: 16))
                            .foregroundColor(Color("CBCCD5"))
                    }
                    Spacer()
                    HStack(spacing: 0.0){
                        Text("4.8")
                            .font(.custom("Poppins-Medium", size: 16))
                            .foregroundColor(Color("212131"))
                            .padding(.trailing, 4)
                        Image("IconStar")
                    }
                }
                Text("Makanan asal Bandung dengan tekstur yang lembut sehingga ketika dimakan rasanya tidak sakit tenggorokan.")
                    .font(.custom("Poppins-Regular", size: 16))
                    .foregroundColor(Color("212131"))
                    .padding(.top, 16)
                    .padding(.bottom, 20)
                    .lineSpacing(5)
                VStack(alignment: .leading, spacing: 0.0){
                    Text("Bundle")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("212131"))
                        .padding(.bottom, 12)
                    HStack(spacing: 16){
                        Image("PhotoOne")
                        Image("PhotoTwo")
                        Image("PhotoThree")
                    }
                }
                .padding(.bottom, 32)
                HStack(spacing: 0.0){
                    VStack(alignment: .leading, spacing: 0.0){
                        Text("$808.00")
                            .font(.custom("Poppins-SemiBold", size: 22))
                            .foregroundColor(Color("212131"))
                            .padding(.bottom, 6)
                        Text("/porsi")
                            .font(.custom("Poppins-Regular", size: 14))
                            .foregroundColor(Color("CBCCD5"))
                    }
                    Spacer()
                    Button(action: {print("OK")}, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: 190, height: 50)
                                .foregroundColor(Color("FF815E"))
                            Text("Order Now")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("FFFFFF"))
                        }
                    })
                }
            }
        })
        .padding(.horizontal, 24)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
