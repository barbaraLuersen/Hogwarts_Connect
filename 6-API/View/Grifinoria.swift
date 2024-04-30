//
//  Grifinoria.swift
//  6-API
//
//  Created by Turma02-5 on 05/04/24.
//

import SwiftUI

struct Grifinoria: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                Image("lion")
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.top)
                    .opacity(0.6)
                Text("Gryffindor").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().foregroundStyle(Color.white)
                Text("BRAVERY - COURAGE - DETERMINATION").font(.headline).bold().foregroundStyle(Color.white)
                
                ScrollView{
                    ForEach(viewModel.grifinoria) { index in
                        HStack{
                                    AsyncImage(url: URL(string: index.image!)) { image in
                                        image
                                            .resizable()
                                            .square()
                                            .frame(width: 100)
                                    } placeholder: {
                                        //ProgressView()
                                    }.padding()
                            Text(index.name!).font(.title3).foregroundStyle(Color.white)
                            Spacer()
                        }
                    }
                }
            }
            .onAppear(){
                viewModel.fetchGrifinoria()
            }
        }
    }
}

#Preview {
    Grifinoria()
}
extension Image {
    @warn_unqualified_access
    func square() -> some View {
        Rectangle()
            .aspectRatio(1, contentMode: .fit)
            .overlay(
                self
                    .resizable()
                    .scaledToFill()
            )
            .clipShape(Rectangle())
    }
}
