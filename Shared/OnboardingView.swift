//
//  ContentView.swift
//  Onboadrding Practice
//
//  Created by Tariq Almazyad on 11/7/20.
//

import SwiftUI


struct OnboardingView: View {
    
    // to track the paging circle index
    @State private var viewIndex = 0
    // to change the bg color
    @State private var currentBackgroundPage = MockData.onboardingPages.first?.color ?? .clear
    
    var body: some View {
        // we made the zstack to make the bottons go above the TabView
        ZStack {
            // we pass in the page index $selectedTab
            TabView(selection: $viewIndex){
                // first array to render all pages
                ForEach(MockData.onboardingPages, id: \.self){ onboardingPage in
                    
                    VStack(spacing: 36){
                        // main image
                        Image(systemName: onboardingPage.mainImageName)
                            .font(.system(size: 60))
                            .frame(width: 100, height: 100)
                            .foregroundColor(Color(#colorLiteral(red: 0.3677974939, green: 0.3611263037, blue: 0.9022430182, alpha: 1)))
                        
                        // second array to render the 3 UIs inside each page
                        ForEach(onboardingPage.detailViewModel, id: \.id){ detailViewModel in
                            HStack {
                                DetailCellView(detailViewModel: detailViewModel)
                                Spacer() //<- to push each cell to left for better alignment and dynamic text length
                            }
                        }
                        Spacer()
                    }.tag(MockData.onboardingPages.firstIndex(of: onboardingPage) ?? 0) // <<-- it is important to track current page index and assign each page a unique tag
                    .padding(.vertical)
                }
                
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            
            VStack {
                ButtonsHStackView(selectedTab: $viewIndex)
                    .padding()
            }
        }.background(currentBackgroundPage)
        // when the viewIndex changes, we update the page color
        .onChange(of: viewIndex) { _ in
            withAnimation{
                currentBackgroundPage = MockData.onboardingPages[viewIndex].color
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .preferredColorScheme(.dark)
    }
}
