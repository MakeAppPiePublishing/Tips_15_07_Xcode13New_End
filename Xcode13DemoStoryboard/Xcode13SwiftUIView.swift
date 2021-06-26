//
//  Xcode13SwiftUIView.swift
//  Xcode13DemoStoryboard
//
//  Created by Steven Lipton on 6/18/21.
//

import SwiftUI


struct Xcode13SwiftUIView: View {
    @State var index:Int = 0
    var body: some View {
        VStack {
            Text("SwiftUI Demo")
                .font(.title)
            Image(systemName: model[index])
                .resizable()
                .scaledToFit()
                .padding(10)
                .symbolVariant(.fill)
                .symbolVariant(.circle)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue,.green,.red)
            Label(model[index], systemImage:model[index])
                .imageScale(.large)
                
            Spacer()
            HStack{
                Button {
                    index = (index <= 0) ? model.count - 1 : index - 1
                } label: {
                    Image(systemName: "arrow.left")
                }
                Spacer()
                        ForEach (0..<model.count){ item in
                            Button {
                               index = item
                            } label: {
                                Image(systemName: model[item])
                                    .imageScale(.small)
                            }
                            Spacer()
                        }
                Button {
                    index = (index >= (model.count - 1)) ? 0 : index + 1
                } label: {
                    Image(systemName: "arrow.right")
                }
            }
            .font(.title)
            .padding()
            .background(.bar)
            
        }
    }
}

struct Xcode13SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Xcode13SwiftUIView()
    .previewInterfaceOrientation(.portrait)
    }
}
