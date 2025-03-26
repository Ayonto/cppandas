#pragma once

#include <fstream> 
#include <sstream> 
#include <vector> 
#include <map> 
#include <algorithm> 
#include <variant> 
#include <optional> 

using DataFrameValue = std::variant<std::string, double> ; 
using DataFrameColumn = std::vector<DataFrameValue>; 

class DataFrame{
    private: 
    std::vector<std::string> columns; 
    std::map<std::string, DataFrameColumn> data; 
    std::map<std::string, std::string> dtypes; 

    static bool is_number(const std::string& s); 
    static std::optional<double> try_convert_double(const std::string& s);
    std::string infer_col_type(const std::vector<std::string>& col_data); 

    public: 
    DataFrame() {}
    void read_csv(const std::string& filename); 
    void head(int n = 5) const; 
    std::string dtype(const std::string& col_name) const;

    DataFrameColumn operator[](const std::string& col_name) const; 

    void show_frame() const; 
    
    

    
}; 