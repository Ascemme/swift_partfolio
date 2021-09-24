//
//  ContentView.swift
//  testShope
//
//  Created by Temur on 24/09/2021.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var autorisation = false
    @State var show1 = true
    @State var show2 = false
    @State var showTop = false
    @State var showDetail = false
    var body: some View {
        ZStack {
            Color(showDetail ? #colorLiteral(red: 0.188, green: 0.26, blue: 0.36, alpha: 1) : #colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Image("2")
                    .padding()
                Spacer()
                HStack(alignment: .top, spacing: 40) {
                    
                    Button(action: {
                        self.showTop.toggle()
                    }) {
                        VStack {
                            Text("Portfolio")
                                .foregroundColor(showTop ? Color(#colorLiteral(red: 0.188, green: 0.26, blue: 0.36, alpha: 1)) : Color(#colorLiteral(red: 0.188, green: 0.26, blue: 0.36, alpha: 1)))
                            
                            
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 30, height: 4)
                                .offset(y: -10)
                                .foregroundColor(showTop ? Color(#colorLiteral(red: 0.188, green: 0.26, blue: 0.36, alpha: 1)) : Color(#colorLiteral(red: 0.4274509804, green: 0.4470588235, blue: 0.4705882353, alpha: 1)))
                            
                            
                            
                        }
                    }
                    Button(action: {
                        //
                    }) {
                        Text("Home")
                    }
                    
                    Button(action: {
                        //
                    }) {
                        Text("About us")
                    }
                    
                }.foregroundColor(Color(#colorLiteral(red: 0.4274509804, green: 0.4470588235, blue: 0.4705882353, alpha: 1)))
                    .onAppear {
                        self.showTop = true
                }
                
                Spacer()
                
                ZStack {
                
                    
                    ZStack {
                        
                        Spacer()
                            .frame(width: 365.0, height: 368.0)
                            .background(showDetail ? Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)) : Color(#colorLiteral(red: 0.9647058824, green: 0.9647058824, blue: 0.9647058824, alpha: 1)))
                            .cornerRadius(42)
                            .shadow(radius: 5)
                        
                        VStack {
                            if show1 == true {
                                Image("7")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 265.0, height: 238.0)
                                    .offset(y: 20)
                                    .overlay(showDetail ? Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)).opacity(0.2) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0))
                                Text("Nike Air Zoom Pegasus 37")
                                    .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                    .bold()
                                    .offset(y: -100)
                            } else if show2 == true {
                                Image("8")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 265.0, height: 368.0)
                                    .overlay(showDetail ? Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)).opacity(0.2) : Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0))
                                Text("Nike Air Max Plus")
                                    .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                    .bold()
                                    .offset(y: -100)
                            }
                        }
                    }
                }
                

                Spacer()
                
                Button(action: { self.showDetail.toggle(); self.autorisation.toggle()
                }) {
                    Text("Add")
                        .foregroundColor(.white)
                        .frame(width: 169, height: 42)
                        .background(Color(#colorLiteral(red: 0.188, green: 0.26, blue: 0.36, alpha: 1)))
                        .cornerRadius(20)
                        .shadow(color: Color(#colorLiteral(red: 0.188, green: 0.26, blue: 0.36, alpha: 1)).opacity(0.6), radius: 10, y: 10)
                        .padding()
                    
                }
                
                HStack {
                    Text("Galery")
                        .font(.system(size: 18))
                        .bold()
                        .padding(.leading)
                    Spacer()
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 35) {
                        Button(action: {
                            self.show1.toggle()
                            self.show2 = false
                        }) {
                            Image("3")
                                .renderingMode(.original)
                                .overlay(show1 ? RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.9803921569, green: 0.3921568627, blue: 0, alpha: 1)), lineWidth: 3) : nil)
                        }
                        
                        
                        Button(action: {
                            self.show2.toggle()
                            self.show1 = false
                        }) {
                            Image("5")
                                .renderingMode(.original)
                                .overlay(show2 ? RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color(#colorLiteral(red: 0.9803921569, green: 0.3921568627, blue: 0, alpha: 1)), lineWidth: 3) : nil)
                        }
                        
                        
                        Button(action: {
                            
                        }) {
                            Image("1")
                                .renderingMode(.original)
                        }
                        
                        
                        
                        Button(action: {
                            
                        }) {
                            Image("1")
                                .renderingMode(.original)
                        }
                        
                    }
                    .padding(.horizontal)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                    
                }
            }
            
            DetailView(showDetail: $showDetail)
                .offset(y: showDetail ? 0 : 600)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
            
        }
        
    }
}


struct DetailView: View {
    @Binding var showDetail: Bool
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                VStack(alignment: .leading, spacing: 16) {
                    HStack(alignment: .top) {
                        Spacer()
                        VStack(alignment: .leading, spacing: 10) {
                            
                            Text("Adding photo")
                                .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                            Text("To portfolio")
                                .bold()
                            Spacer()
                        }
                        Spacer()
                        
                    }
                    .padding(.horizontal)
                    Text("Made by Temur Abdurakmanov")
                        .font(.caption)
                        .padding(.horizontal)
                        
                    }
                
                    
                }
                .padding(.top, 10)
                    
                .frame(width: 383, height: 400)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
                
            }
            
            
            
            Image(systemName: "xmark")
                .frame(width: 30, height: 30)
                .foregroundColor(.black)
                .offset(x: 160, y: 35)
                .onTapGesture {
                    self.showDetail = false
            }
            
        }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
