//
//  ContentView.swift
//  AlertUsing
//
//  Created by Mert Baykal on 13/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alert = false    
    @State private var actionAlert = false

    
    var body: some View {
        VStack(spacing: 100) {
            
            Button("Alert"){
                alert = true
            }.alert("Baslik", isPresented: $alert, actions: {
                Button("iptal", role: .cancel, action: {
                    print("iptal secildi")
                })
                
                Button("tamam", role: .destructive, action: {
                    print("Tamam secildi")
                })
                
            },message: {Text("icerik")})
            
            
            Button("Action Sheet"){
                actionAlert = true
            }.actionSheet(isPresented: $actionAlert) {
                ActionSheet(title: Text("Baslik"), message: Text("Action Alert kulanimi"), buttons: [
                    .default(Text("Tamam"), action: {
                        print("Tamam")
                    }),
                    .cancel(Text("İptal"), action: {
                        print("İptal")
                    })
                ])
            }
            
            Text("Context Menu")
                .contextMenu{
                    Button{
                        print("Resim Secildi")
                    } label: {
                        Label("Resim cek", systemImage: "camera")
                    }
                
                    Button{
                        print("Video Secildi")
                    } label: {
                        Label("Video cek", systemImage: "video")
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
