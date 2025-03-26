#pragma once

#include <fstream> 
#include <sstream> 
#include <vector> 
#include <map> 
#include <algorithm> 
#include <variant> 
#include <optional> 

class DataFrame{
    private: 
    std::vector<std::string> columns; 
    std::map<std::string, std::vector<std::string>> data; 

    bool is_empty(const std::string& value) const; 

    template<typename type> 
    type infer_type(const std::string& val) { 
        if constexpr (std::is_same_v<type, std::string>) {
            return val; 
        }
        else if constexpr (std::is_same_v<type, double>) { 
            return std::stod(val); 
        }
        else if constexpr (std::is_same_v<type, int>) { 
            return std::stoi(val); 
        }
        else {
            static_assert(std::is_same_v<type, std::string> || 
                        std::is_same_v<type, double> || 
                        std::is_same_v<type, int>,
                        "Unsupported type in infer_type");
            return type{};
        }
    }

    public: 
    DataFrame() {}
    void read_csv(const std::string& filename); 
    void head(int n = 5) const; 
    std::string dtype(const std::string& col_name) const;
    std::vector<std::string> operator[](const std::string& col_name) const; 

    template<typename type = std::string>
    std::vector<std::vector<type>> to_vector(const std::vector<std::string>& cols){
    
        for(const auto& col: cols) { 
            if(data.find(col) == data.end()) { throw std::out_of_range("Column no found: " + col);}
        }
    
        std::vector<std::vector<type>> matrix; 
        const size_t row_count = data.at(cols[0]).size();
        for (size_t i = 0; i<row_count ; i++) { 
            std::vector<type> row; 
            for(const auto& col: cols) { 
                const type& val = infer_type<type>(data.at(col)[i]); 
                row.push_back(val); 
            }
            matrix.push_back(row); 
        }
    
        return matrix; 
    }
    

    void show_frame() const; 
    void dropna(); 
    void fillna(const std::string& value); 

}; 