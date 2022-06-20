import SwiftUI

struct OnboardingAView: View {
    @StateObject var onboardingAViewModel = OnboardingAViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    ZStack(alignment: .center) {
                        FSPagerViewSUI($onboardingAViewModel.group3CurrentPage,
                                       onboardingAViewModel.sliderData) { item in
                            ZStack(alignment: .center) {
                                Image("img_backgroundimag")
                                    .resizable()
                                    .frame(width: UIScreen.main.bounds.width,
                                           height: getRelativeHeight(767.88), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                VStack(alignment: .leading, spacing: 0) {
                                    VStack {
                                        Text(StringConstants.kLblIMSuperFast)
                                            .font(FontScheme
                                                .kPoppinsBold(size: getRelativeHeight(28.0)))
                                            .fontWeight(.bold)
                                            .foregroundColor(ColorConstants.Gray900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(267.0),
                                                   height: getRelativeHeight(40.0),
                                                   alignment: .center)
                                            .padding(.horizontal, getRelativeWidth(10.0))
                                        Text(StringConstants.kMsgMadeToRockYo)
                                            .font(FontScheme
                                                .kPoppinsSemiBold(size: getRelativeHeight(16.0)))
                                            .fontWeight(.semibold)
                                            .foregroundColor(ColorConstants.WhiteA700)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(268.0),
                                                   height: getRelativeHeight(24.0),
                                                   alignment: .center)
                                            .padding(.horizontal, getRelativeWidth(10.0))
                                    }
                                    .frame(width: getRelativeWidth(339.0),
                                           height: getRelativeHeight(64.0), alignment: .center)
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text(StringConstants.kMsgLoremIpsumIs)
                                            .font(FontScheme
                                                .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                            .fontWeight(.medium)
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(259.0),
                                                   height: getRelativeHeight(40.0),
                                                   alignment: .center)
                                            .padding(.horizontal, getRelativeWidth(33.0))
                                    }
                                    .frame(width: getRelativeWidth(339.0),
                                           height: getRelativeHeight(40.0), alignment: .leading)
                                    .padding(.top, getRelativeHeight(18.0))
                                    VStack {
                                        Button(action: {
                                            onboardingAViewModel.nextScreen = "OnboardingAAView"
                                        }, label: {
                                            Text(StringConstants.kLblContinue)
                                                .font(FontScheme
                                                    .kPoppinsBold(size: getRelativeHeight(18.0)))
                                                .foregroundColor(ColorConstants.WhiteA700)
                                                .frame(width: getRelativeWidth(311.0),
                                                       height: getRelativeHeight(60.0),
                                                       alignment: .center)
                                        })
                                        .frame(width: getRelativeWidth(311.0),
                                               height: getRelativeHeight(60.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                                   bottomLeft: 5.0,
                                                                   bottomRight: 5.0)
                                                .fill(ColorConstants.LightBlueA200))
                                        .padding(.horizontal, getRelativeWidth(10.0))
                                    }
                                    .frame(width: getRelativeWidth(339.0),
                                           height: getRelativeHeight(60.0), alignment: .center)
                                    .padding(.top, getRelativeHeight(28.0))
                                    VStack(alignment: .leading, spacing: 0) {
                                        HStack {
                                            HStack {
                                                Image("img_lefticon")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(24.0),
                                                           height: getRelativeHeight(23.15),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                Text(StringConstants.kLblPrevious)
                                                    .font(FontScheme
                                                        .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Black900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: getRelativeWidth(53.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .topLeading)
                                                    .padding(.leading, getRelativeWidth(7.0))
                                            }
                                            .frame(width: getRelativeWidth(84.0),
                                                   height: getRelativeHeight(23.15),
                                                   alignment: .center)
                                            Spacer()
                                            HStack {
                                                Text(StringConstants.kLblNext)
                                                    .font(FontScheme
                                                        .kPoppinsMedium(size: getRelativeHeight(12.0)))
                                                    .fontWeight(.medium)
                                                    .foregroundColor(ColorConstants.Black900)
                                                    .minimumScaleFactor(0.5)
                                                    .multilineTextAlignment(.trailing)
                                                    .frame(width: getRelativeWidth(53.0),
                                                           height: getRelativeHeight(20.0),
                                                           alignment: .topTrailing)
                                                Image("img_righticon")
                                                    .resizable()
                                                    .frame(width: getRelativeWidth(24.0),
                                                           height: getRelativeHeight(23.15),
                                                           alignment: .center)
                                                    .scaledToFit()
                                                    .clipped()
                                                    .padding(.leading, getRelativeWidth(7.0))
                                            }
                                            .frame(width: getRelativeWidth(84.0),
                                                   height: getRelativeHeight(23.15),
                                                   alignment: .center)
                                        }
                                        .frame(width: getRelativeWidth(339.0),
                                               height: getRelativeHeight(23.15),
                                               alignment: .leading)
                                    }
                                    .frame(width: getRelativeWidth(339.0),
                                           height: getRelativeHeight(23.15), alignment: .leading)
                                    .padding(.top, getRelativeHeight(26.0))
                                }
                                .frame(width: getRelativeWidth(339.0),
                                       height: getRelativeHeight(259.15), alignment: .center)
                                .padding(.top, getRelativeHeight(488.0))
                                .padding(.horizontal, getRelativeWidth(18.0))
                            }
                            .hideNavigationBar()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(767.88))
                        }
                        PageIndicator(numPages: onboardingAViewModel.sliderData.count,
                                      currentPage: $onboardingAViewModel.group3CurrentPage,
                                      selectedColor: ColorConstants.Bluegray700,
                                      unSelectedColor: ColorConstants.WhiteA700,
                                      spacing: 8.0)
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(767.88),
                           alignment: .leading)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: OnboardingAAView(),
                                   tag: "OnboardingAAView",
                                   selection: $onboardingAViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct OnboardingAView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingAView()
    }
}
