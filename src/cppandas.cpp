#include <cppandas.h>
#include <iostream>

bool DataFrame::is_number(const std::string& s) { 
    try {
        std::stod(s); 
        return true; 
    }
    catch (...) { return false;}
}

std::optional<double> DataFrame::try_convert_double(const std::string& s) { 
    try { 
        return std::stod(s); 
    }
    catch(...) {return std::nullopt; }

}

std::string DataFrame::infer_col_type(const std::vector<std::string>& col_data) { 
    for (auto& val: col_data) { 
        if(!is_number(val)){return "string"; }
    }
    return "number"; 
}

void DataFrame::read_csv(const std::string& filename) { 
    std::ifstream file(filename); 
    if(!file.is_open()) { 
        throw std::runtime_error("Error: Could not open file " + filename); 
    }

    std::string line; 
    
    if(std::getline(file, line)) { 
        std::stringstream ss(line); 
        std::string column; 
        while(std::getline(ss, column, ',')) { 
            columns.push_back(column); 
            data[column] = DataFrameColumn(); 
        }
    }

    std::map<std::string, std::vector<std::string>> raw_data; 
    for(auto& col: columns) { 
        raw_data[col] = std::vector<std::string>(); 
    }

    while(std::getline(file, line)) { 
        std::stringstream ss(line); 
        std::string value ; 

        int col_idx = 0; 
        while(std::getline(ss, value, ',')) { 
            raw_data[columns[col_idx]].push_back(value); 
            col_idx++; 
        }
    }

    file.close(); 


    for(auto& col: columns) { 
        std::string col_type = infer_col_type(raw_data[col]); 
        dtypes[col] = col_type; 

        for(auto& val: raw_data[col]) { 
            if (col_type == "number") { 
                data[col].push_back(std::stod(val)); 
            } else { data[col].push_back(val); }
        }
    }
}

DataFrameColumn DataFrame::operator[](const std::string& column_name) const {
    return data.at(column_name);
}

void DataFrame::head(int n) const {
    for (const auto& col : columns) {
        std::cout << col << " (" << dtypes.at(col) << ")\t";
    }
    std::cout << std::endl;

    for (int i = 0; i < n && i < data.at(columns[0]).size(); ++i) {
        for (const auto& col : columns) {
            std::visit(
                [](const auto& v) { std::cout << v << "\t"; },
                data.at(col)[i]
            );
        }
        std::cout << std::endl;
    }
}

// void DataFrame::show_frame() const { 

//     NULL; 
// }
