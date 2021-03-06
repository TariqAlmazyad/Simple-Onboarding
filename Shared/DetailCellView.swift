//
//  DetailsHStackView.swift
//  Onboadrding Practice
//
//  Created by Tariq Almazyad on 11/8/20.
//

import SwiftUI

struct DetailCellView: View {
    let detailViewModel: OnboardingDetailModel
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top){
                Image(systemName: detailViewModel.imageName)
                    .font(.largeTitle)
                    .foregroundColor(Color(#colorLiteral(red: 0.3677974939, green: 0.3611263037, blue: 0.9022430182, alpha: 1)))
                    .padding()
                VStack(alignment: .leading){
                    Text(detailViewModel.titleText)
                        .font(.headline)
                        .foregroundColor(.primary)
                        .accessibility(addTraits: .isHeader)
                    Text(detailViewModel.detailText)
                        .font(.body)
                        .foregroundColor(.secondary)
                }
            }.padding(.all)
        }
    }
}


struct DetailsHStackView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCellView(detailViewModel: sampleDetailViewModel)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
        OnboardingView()
            .preferredColorScheme(.dark)
        
    }
}


let sampleDetailViewModel =  OnboardingDetailModel(imageName: "slider.horizontal.below.rectangle", titleText: "Lorem Ipsum",
                                             detailText: "Lorem Ipsum is simply dummy text of the printing and typesetting\n Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
