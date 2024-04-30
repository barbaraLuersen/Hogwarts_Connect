//
//  Sonserina.swift
//  6-API
//
//  Created by Turma02-5 on 05/04/24.
//

import SwiftUI

struct Sonserina: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Image("cobra")
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.top)
                    .opacity(0.6)
                Text("Slytherin").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().foregroundStyle(Color.white)
                Text("AMBITION - CUNNING - LEADERSHIP").font(.headline).bold().foregroundStyle(Color.white)
                ScrollView{
                    
                    ForEach(viewModel.sonserina) { index in
                        HStack{
                            AsyncImage(url: URL(string: index.image!)) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            } placeholder: {
                                //ProgressView()
                            }.padding()
                                .frame(width: 100, height: 100)
                            Text(index.name!).font(.title3).foregroundStyle(Color.white)
                            Spacer()
                        }}
                }
                
            }
            .onAppear(){
                viewModel.fetchSonserina()
            }
        }
    }
}

#Preview {
    Sonserina()
}
