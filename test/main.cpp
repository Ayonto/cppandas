#include <iostream>
#include <cppandas.h>

int main() {
    DataFrame df;
    df.read_csv("dataset.csv");

    std::cout << "Original DataFrame:" << std::endl;
    df.head();

    DataFrameColumn frame = df["Age"]; 
    std::cout << "Age Column" << std::endl; 
    for (const auto& i: frame) { 
        std::visit([](const auto& f){
            std::cout << f << std::endl;
        }, i);
    }
    
    return 0;
}