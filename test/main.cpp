#include <iostream>
#include <cppandas.h>
#include <typeinfo> 

int main() {
    DataFrame df;
    df.read_csv("dataset.csv");

    std::cout << "Original DataFrame:" << std::endl;
    df.head();


    // df.fillna("0.0");
    // df.dropna(); 

    std::vector<std::string> frame = df["Age"]; 
    

    std::vector<std::vector<std::string>> fetched = df.to_vector<std::string>({"Age", "Speed_of_Impact"});

    std::cout << "Getting Vector" << std::endl;
    for(const auto& row: fetched) {
        for(const auto& i : row) { 
            std::cout << i << "\t"; 
        }
        std::cout << "\n"; 
    }

    std::cout << typeid(fetched[0][0]).name() << std::endl;

    
    return 0;
}