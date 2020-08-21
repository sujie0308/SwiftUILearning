//
//  ContentView.swift
//  SwiftUITest
//
//  Created by 苏苏杰 on 2020/8/13.
//  Copyright © 2020 苏苏杰. All rights reserved.
//

import SwiftUI

struct ContentView: View {

         
    var body: some View {
        List{
                      Image("iconTest")
                          .resizable()
                        .scaledToFit()
//                          .clipped()
                       // 忽视安全区域
                        .edgesIgnoringSafeArea(.all)
                          .listRowInsets(EdgeInsets())
                        .opacity(0.5)
                        .clipShape(Circle())
                        .overlay(
                            Rectangle()
                                .foregroundColor(.black)
                                .opacity(0.4)
                            .overlay(Text("三")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding(),
                                     alignment: .top)
//                            Text("if you are luckey if you are luckey if you are luckey if you are luckey if you are luckey if you are luckeyif you are luckey")
//                                .fontWeight(.heavy)
//                                .foregroundColor(.white)
//                                .font(.system(.headline, design: .rounded))
//                            .padding()
//                                .frame(width:250)
//                                .background(Color.black)
//                            .cornerRadius(10)
//                                .opacity(0.8)
//                                .padding(),
//                                  alignment: .top
                      
//                            Image(systemName: "heart.fill")
//                                .opacity(0.5)
//                                .foregroundColor(.red)
//                                .font(.system(size: 50))
                        )
                
            VStack(alignment: .leading, spacing: 0) {
                labeltextfield(Title: "1", FiledStr: "1")
                labeltextfield(Title: "2", FiledStr: "2")
                labeltextfield(Title: "3", FiledStr: "3")
                labeltextfield(Title: "4", FiledStr: "4")
            }
            .padding(.top, 20)
            .listRowInsets(EdgeInsets())
        }
   
    }

}
struct labeltextfield :View{
    @State private var StrText = ""
           var Title:String
           var FiledStr:String
    var body: some View {
    
       VStack(alignment: .leading, spacing: 5) {
               Text(Title)
                   .font(.headline)
               TextField(FiledStr, text: $StrText)
                   .padding(.all)
                .background(Color(.red).opacity(0.1))
               .cornerRadius(10)
        
                   
                   
           }
           .padding(.horizontal, 10)
       }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
