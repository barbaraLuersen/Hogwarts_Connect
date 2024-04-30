//
//  LufaLufa.swift
//  6-API
//
//  Created by Turma02-5 on 05/04/24.
//

import SwiftUI

struct LufaLufa: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Image("lontra")
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.top)
                    .opacity(0.6)
                Text("Hufflepuff").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().foregroundStyle(Color.white)
                Text("HARD WORK - DEDICATION - PATIENCE").font(.headline).bold().foregroundStyle(Color.white)
                ScrollView{
                    
                    ForEach(viewModel.lufaLufa) { index in
                        HStack{
                            AsyncImage(url: URL(string: index.image!)) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            } placeholder: {
                                //ProgressView()
                            }.padding()
                                .frame(width: 100, height: 100)
                            Text(index.name!).font(.title3)
                            Spacer()
                        }}
                }
                
            }
            .onAppear(){
                viewModel.fetchLufaLufa()
            }
        }
    }
}
#Preview {
    LufaLufa()
}
