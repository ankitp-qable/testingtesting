import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kregular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kregular, size: size)
    }

    static func kInterMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterMedium, size: size)
    }

    static func kInterBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterBold, size: size)
    }

    static func kInterSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kInterSemiBold, size: size)
    }

    static func kSFProTextBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProTextBold, size: size)
    }

    static func kSFProTextMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProTextMedium, size: size)
    }

    static func kSFProTextRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProTextRegular, size: size)
    }

    static func kSFProTextSemibold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProTextSemibold, size: size)
    }

    static func kPoppinsMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsMedium, size: size)
    }

    static func kPoppinsMediumItalic(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsMediumItalic, size: size)
    }

    static func kPoppinsSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsSemiBold, size: size)
    }

    static func kPoppinsBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsBold, size: size)
    }

    static func kPoppinsRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsRegular, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kregular":
            result = self.kregular(size: size)
        case "kInterMedium":
            result = self.kInterMedium(size: size)
        case "kInterBold":
            result = self.kInterBold(size: size)
        case "kInterSemiBold":
            result = self.kInterSemiBold(size: size)
        case "kSFProTextBold":
            result = self.kSFProTextBold(size: size)
        case "kSFProTextMedium":
            result = self.kSFProTextMedium(size: size)
        case "kSFProTextRegular":
            result = self.kSFProTextRegular(size: size)
        case "kSFProTextSemibold":
            result = self.kSFProTextSemibold(size: size)
        case "kPoppinsMedium":
            result = self.kPoppinsMedium(size: size)
        case "kPoppinsMediumItalic":
            result = self.kPoppinsMediumItalic(size: size)
        case "kPoppinsSemiBold":
            result = self.kPoppinsSemiBold(size: size)
        case "kPoppinsBold":
            result = self.kPoppinsBold(size: size)
        case "kPoppinsRegular":
            result = self.kPoppinsRegular(size: size)
        default:
            result = self.kregular(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kregular: String = "regular"
        /**
         * Please Add this fonts Manually
         */
        static let kInterMedium: String = "Inter-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kInterBold: String = "Inter-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kInterSemiBold: String = "Inter-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProTextBold: String = "SFProText-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProTextMedium: String = "SFProText-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProTextRegular: String = "SFProText-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProTextSemibold: String = "SFProText-Semibold"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsMedium: String = "Poppins-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsMediumItalic: String = "Poppins-MediumItalic"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsSemiBold: String = "Poppins-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsBold: String = "Poppins-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsRegular: String = "Poppins-Regular"
    }
}
