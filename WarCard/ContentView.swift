//
//  ContentView.swift
//  WarCard
//
//  Created by Pratyush Sanadhya on 24/02/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var randNum1 = 2
    @State private var randNum2  = 2
    
    @State private var Score1 = 0
    @State private var Score2  =  0
    
    

    var body: some View {
        ZStack{
            Image("Background").resizable().ignoresSafeArea()
            
            VStack{
                Spacer()
                
                Image("logo")
                Spacer()
                
                HStack{
                    Image("card" +  String(randNum1))
                    Image("card" +  String(randNum2))
                }
                Spacer()
                
                Button(action: {
                    
                    //Randomize the State Properties
                    self.randNum1 = Int.random(in: 2...14)
                    self.randNum2  = Int.random(in: 2...14)
                    //Update scores
                    if self.randNum1 > self.randNum2{
                        self.Score1+=1
                    }
                    else if self.randNum2 > self.randNum1{
                        self.Score2+=1
                    }
                    
            
                },
                label: {
                    Image("dealbutton")
                })
                
                Spacer()
                HStack{
                    VStack{ Text("Player").bold().padding(.bottom,20)
                        Text(String(Score1))
                    }.padding(.leading,50)
                    .foregroundColor(.yellow)
                    
                    Spacer()
                    VStack{
                        Text("CPU").bold().padding(.bottom,20)
                        Text(String(Score2 ))
                        }
                }.padding(.trailing,50)
                .foregroundColor(.yellow)
                Spacer()
            }
        }
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
