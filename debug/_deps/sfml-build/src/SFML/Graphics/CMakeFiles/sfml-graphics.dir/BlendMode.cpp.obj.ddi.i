# 0 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/src/SFML/Graphics/BlendMode.cpp"
# 1 "C:\\Users\\aarma\\OneDrive\\Desktop\\CMPUT350\\adhal-CMPUT350-lab-6-exercise\\debug//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/src/SFML/Graphics/BlendMode.cpp"
# 28 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/src/SFML/Graphics/BlendMode.cpp"
# 1 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/BlendMode.hpp" 1 3
# 25 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/BlendMode.hpp" 3
       




# 1 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/Export.hpp" 1 3
# 25 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/Export.hpp" 3
       




# 1 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Config.hpp" 1 3
# 25 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Config.hpp" 3
       
# 31 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/Export.hpp" 2 3
# 31 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/BlendMode.hpp" 2 3



# 33 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/BlendMode.hpp" 3
namespace sf
{





struct BlendMode
{






    enum class Factor
    {
        Zero,
        One,
        SrcColor,
        OneMinusSrcColor,
        DstColor,
        OneMinusDstColor,
        SrcAlpha,
        OneMinusSrcAlpha,
        DstAlpha,
        OneMinusDstAlpha
    };







    enum class Equation
    {
        Add,
        Subtract,
        ReverseSubtract,
        Min,
        Max
    };







    BlendMode() = default;
# 96 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/BlendMode.hpp" 3
    BlendMode(Factor sourceFactor, Factor destinationFactor, Equation blendEquation = Equation::Add);
# 109 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/BlendMode.hpp" 3
    BlendMode(Factor colorSourceFactor,
              Factor colorDestinationFactor,
              Equation colorBlendEquation,
              Factor alphaSourceFactor,
              Factor alphaDestinationFactor,
              Equation alphaBlendEquation);




    Factor colorSrcFactor{BlendMode::Factor::SrcAlpha};
    Factor colorDstFactor{BlendMode::Factor::OneMinusSrcAlpha};
    Equation colorEquation{BlendMode::Equation::Add};
    Factor alphaSrcFactor{BlendMode::Factor::One};
    Factor alphaDstFactor{BlendMode::Factor::OneMinusSrcAlpha};
    Equation alphaEquation{BlendMode::Equation::Add};
};
# 137 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/BlendMode.hpp" 3
[[nodiscard]] bool operator==(const BlendMode& left, const BlendMode& right);
# 149 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/BlendMode.hpp" 3
[[nodiscard]] bool operator!=(const BlendMode& left, const BlendMode& right);





 extern const BlendMode BlendAlpha;
 extern const BlendMode BlendAdd;
 extern const BlendMode BlendMultiply;
 extern const BlendMode BlendMin;
 extern const BlendMode BlendMax;
 extern const BlendMode BlendNone;


}
# 29 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/src/SFML/Graphics/BlendMode.cpp" 2



# 31 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/src/SFML/Graphics/BlendMode.cpp"
namespace sf
{



const BlendMode BlendAlpha(BlendMode::Factor::SrcAlpha,
                           BlendMode::Factor::OneMinusSrcAlpha,
                           BlendMode::Equation::Add,
                           BlendMode::Factor::One,
                           BlendMode::Factor::OneMinusSrcAlpha,
                           BlendMode::Equation::Add);
const BlendMode BlendAdd(BlendMode::Factor::SrcAlpha,
                         BlendMode::Factor::One,
                         BlendMode::Equation::Add,
                         BlendMode::Factor::One,
                         BlendMode::Factor::One,
                         BlendMode::Equation::Add);
const BlendMode BlendMultiply(BlendMode::Factor::DstColor, BlendMode::Factor::Zero, BlendMode::Equation::Add);
const BlendMode BlendMin(BlendMode::Factor::One, BlendMode::Factor::One, BlendMode::Equation::Min);
const BlendMode BlendMax(BlendMode::Factor::One, BlendMode::Factor::One, BlendMode::Equation::Max);
const BlendMode BlendNone(BlendMode::Factor::One, BlendMode::Factor::Zero, BlendMode::Equation::Add);



BlendMode::BlendMode(Factor sourceFactor, Factor destinationFactor, Equation blendEquation) :
    colorSrcFactor(sourceFactor),
    colorDstFactor(destinationFactor),
    colorEquation(blendEquation),
    alphaSrcFactor(sourceFactor),
    alphaDstFactor(destinationFactor),
    alphaEquation(blendEquation)
{
}



BlendMode::BlendMode(Factor colorSourceFactor,
                     Factor colorDestinationFactor,
                     Equation colorBlendEquation,
                     Factor alphaSourceFactor,
                     Factor alphaDestinationFactor,
                     Equation alphaBlendEquation) :
    colorSrcFactor(colorSourceFactor),
    colorDstFactor(colorDestinationFactor),
    colorEquation(colorBlendEquation),
    alphaSrcFactor(alphaSourceFactor),
    alphaDstFactor(alphaDestinationFactor),
    alphaEquation(alphaBlendEquation)
{
}



bool operator==(const BlendMode& left, const BlendMode& right)
{
    return (left.colorSrcFactor == right.colorSrcFactor) && (left.colorDstFactor == right.colorDstFactor) &&
           (left.colorEquation == right.colorEquation) && (left.alphaSrcFactor == right.alphaSrcFactor) &&
           (left.alphaDstFactor == right.alphaDstFactor) && (left.alphaEquation == right.alphaEquation);
}



bool operator!=(const BlendMode& left, const BlendMode& right)
{
    return !(left == right);
}

}
