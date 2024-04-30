//
//  ContentView.swift
//  6-API
//
//  Created by Turma02-5 on 05/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        NavigationStack{
            ZStack {
                Color.white.ignoresSafeArea()
                AsyncImage(url: URL(string: "https://i.pinimg.com/564x/92/74/6f/92746ffeecba34c866e175198b0f627d.jpg")){image in image.opacity(0.9)} placeholder: {
                    ProgressView()
                }
                VStack{
                    
                    VStack{
                        Text("Welcome to Hogwarts!")
                            .font(.title).bold().foregroundStyle(Color.white).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Text("Choose your house and meet your colleagues").font(.subheadline).foregroundStyle(Color.white)
                            .padding(.bottom, 80).shadow(radius: 10)
                    }
                    VStack {
                        NavigationLink(destination: Grifinoria()){
                            HStack{
                                Text("Gryffindor")
                                    .font(.title2)
                                    .foregroundStyle(Color.white).bold()
                                    .padding()
                            }
                            .frame(width: 180, height:60)
                            .foregroundStyle(Color.black).background(Color.black).cornerRadius(80)
                        }
                    }
                    VStack{
                        NavigationLink(destination: Corvinal()){
                            HStack{
                                Text("Ravenclaw")
                                    .font(.title2)
                                    .foregroundStyle(Color.white).bold()
                                    .padding()
                                
                            }
                            .frame(width: 180, height:60)
                            .foregroundStyle(Color.black).background(Color.black).cornerRadius(80)
                        }
                    }
                    VStack{
                        NavigationLink(destination: LufaLufa()){
                            HStack{
                                Text("Hufflepuff")
                                    .font(.title2)
                                    .foregroundStyle(Color.white).bold()
                                    .padding()
                            }
                            .frame(width: 180, height:60)
                            .background(Color.black).cornerRadius(80)
                        }
                    }
                    VStack{
                        NavigationLink(destination: Sonserina()){
                            HStack{
                                Text("Slytherin")
                                    .font(.title2)
                                    .foregroundStyle(Color.white).bold()
                                    .padding()
                            }
                            .frame(width: 180, height:60)
                            .background(Color.black)
                            .cornerRadius(80)
                        }
                    }
                }.padding()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
