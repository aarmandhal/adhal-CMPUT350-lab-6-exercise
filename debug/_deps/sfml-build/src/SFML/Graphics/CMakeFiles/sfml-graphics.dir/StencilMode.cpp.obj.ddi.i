# 0 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/src/SFML/Graphics/StencilMode.cpp"
# 1 "C:\\Users\\aarma\\OneDrive\\Desktop\\CMPUT350\\adhal-CMPUT350-lab-6-exercise\\debug//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/src/SFML/Graphics/StencilMode.cpp"
# 28 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/src/SFML/Graphics/StencilMode.cpp"
# 1 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/StencilMode.hpp" 1 3
# 25 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/StencilMode.hpp" 3
       




# 1 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/Export.hpp" 1 3
# 25 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/Export.hpp" 3
       




# 1 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Config.hpp" 1 3
# 25 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Config.hpp" 3
       
# 31 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/Export.hpp" 2 3
# 31 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/StencilMode.hpp" 2 3



# 33 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/StencilMode.hpp" 3
namespace sf
{







enum class StencilComparison
{
    Never,
    Less,
    LessEqual,
    Greater,
    GreaterEqual,
    Equal,
    NotEqual,
    Always
};







enum class StencilUpdateOperation
{
    Keep,
    Zero,
    Replace,
    Increment,
    Decrement,
    Invert,
};





struct StencilValue
{






    StencilValue(int theValue);







    StencilValue(unsigned int theValue);





    template <typename T>
    StencilValue(T) = delete;

    unsigned int value{};
};





struct StencilMode
{
    StencilComparison stencilComparison{StencilComparison::Always};
    StencilUpdateOperation stencilUpdateOperation{
        StencilUpdateOperation::Keep};
    StencilValue stencilReference{0};
    StencilValue stencilMask{~0u};
    bool stencilOnly{};
};
# 126 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/StencilMode.hpp" 3
[[nodiscard]] bool operator==(const StencilMode& left, const StencilMode& right);
# 138 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/include/SFML/Graphics/StencilMode.hpp" 3
[[nodiscard]] bool operator!=(const StencilMode& left, const StencilMode& right);

}
# 29 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/src/SFML/Graphics/StencilMode.cpp" 2



# 31 "C:/Users/aarma/OneDrive/Desktop/CMPUT350/adhal-CMPUT350-lab-6-exercise/debug/_deps/sfml-src/src/SFML/Graphics/StencilMode.cpp"
namespace sf
{

StencilValue::StencilValue(int theValue) : value(static_cast<unsigned int>(theValue))
{
}



StencilValue::StencilValue(unsigned int theValue) : value(theValue)
{
}



bool operator==(const StencilMode& left, const StencilMode& right)
{
    return left.stencilUpdateOperation == right.stencilUpdateOperation &&
           left.stencilComparison == right.stencilComparison &&
           left.stencilReference.value == right.stencilReference.value &&
           left.stencilMask.value == right.stencilMask.value && left.stencilOnly == right.stencilOnly;
}



bool operator!=(const StencilMode& left, const StencilMode& right)
{
    return !(left == right);
}

}
