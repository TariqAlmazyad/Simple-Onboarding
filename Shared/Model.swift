//
//  Model.swift
//  Onboadrding Practice
//
//  Created by Tariq Almazyad on 11/8/20.
//

import SwiftUI
import LoremIpsum


struct OnboardingModel: Hashable, Identifiable {
    let id = UUID().uuidString
    let backgroundColor: Color
    let mainImageName: String
    let color: Color
    let detailViewModel: [OnboardingDetailModel]
}


struct OnboardingDetailModel: Hashable, Identifiable {
    let id = UUID().uuidString
    let imageName: String
    let titleText: String
    let detailText: String
    
}

struct MockData {
    
   static let onboardingPages = [
        
        OnboardingModel(backgroundColor: .black,
                            mainImageName: "person", color: Color(#colorLiteral(red: 0.1294117647, green: 0.1294117647, blue: 0.1294117647, alpha: 1)),
                            detailViewModel: sampleViewModel0),
        
        OnboardingModel(backgroundColor: .black,
                            mainImageName: "car", color: Color(#colorLiteral(red: 0.2955106795, green: 0.3164159358, blue: 0.3822943866, alpha: 1)),
                            detailViewModel: sampleViewModel0),
        
        OnboardingModel(backgroundColor: .black,
                            mainImageName: "books.vertical.fill", color: Color(#colorLiteral(red: 0.2462273836, green: 0.2462682128, blue: 0.2462184429, alpha: 1)),
                            detailViewModel: sampleViewModel0),
        
        OnboardingModel(backgroundColor: .black,
                            mainImageName: "link.circle", color: Color(#colorLiteral(red: 0.1755183339, green: 0.2302427888, blue: 0.4731917977, alpha: 1)),
                            detailViewModel: sampleViewModel0),
        
        OnboardingModel(backgroundColor: .black,
                            mainImageName: "person.3.fill", color: Color(#colorLiteral(red: 0.03918234259, green: 0.3271836638, blue: 0.2936214209, alpha: 1)),
                            detailViewModel: sampleViewModel0),
    ]
    
    
}


let sampleViewModel0 =   [
    OnboardingDetailModel(imageName: "slider.horizontal.below.rectangle",
                    titleText: LoremIpsum.word,
                    detailText: LoremIpsum.sentences(withNumber: 2)),
    
    OnboardingDetailModel(imageName: "doc.text.fill",
                    titleText: LoremIpsum.word,
                    detailText: LoremIpsum.sentence),
    
    OnboardingDetailModel(imageName: "archivebox.fill",
                    titleText: LoremIpsum.word,
                    detailText: LoremIpsum.sentences(withNumber: 3)),
]







