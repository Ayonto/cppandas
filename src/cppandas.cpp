#include <cppandas.h>
#include <iostream>


bool DataFrame::is_empty(const std::string& value) const {
    return value.empty() || 
           std::all_of(value.begin(), value.end(), [](char c) { return std::isspace(c); });
}


void DataFrame::read_csv(const std::string& filename) { 
    std::ifstream file(filename); 
    if(!file.is_open()) { 
        throw std::runtime_error("Error: Could not open file " + filename); 
    }

    std::string line; 
    
    // read column names 
    if(std::getline(file, line)) { 
        std::stringstream ss(line); 
        std::string column; 
        while(std::getline(ss, column, ',')) { 
            columns.push_back(column); 
            data[column] = std::vector<std::string>(); 
        }
    }

    // read row-wise data 
    while(std::getline(file, line)) { 
        std::stringstream ss(line); 
        std::string value ; 

        int col_idx = 0; 
        while(std::getline(ss, value, ',')) { 
            data[columns[col_idx]].push_back(is_empty(value) ? "NaN" : value); 
            col_idx++; 
        }
    }

    file.close(); 

}

std::vector<std::string> DataFrame::operator[](const std::string& column_name) const {
    return data.at(column_name);
}

void DataFrame::head(int n) const {
    for (const auto& col : columns) {
        std::cout << col << "\t";
    }
    std::cout << std::endl;

    for (int i = 0; i < n && i < data.at(columns[0]).size(); ++i) {
        for (const auto& col : columns) {
            std::cout << data.at(col)[i] << "\t";
        }
        std::cout << std::endl;
    }
}

void DataFrame::dropna() {
    if (data.empty()) return;

    const size_t row_count = data.begin()->second.size();
    std::vector<size_t> rows_to_keep;

    for (size_t i = 0; i < row_count; ++i) {
        bool has_na = false;
        for (const auto& [col, values] : data) {
            if (values[i] == "NaN") {
                has_na = true;
                break;
            }
        }
        if (!has_na) {
            rows_to_keep.push_back(i);
        }
    }

 
    for (auto& [col, values] : data) {
        std::vector<std::string> filtered_values;
        for (size_t i : rows_to_keep) {
            filtered_values.push_back(values[i]);
        }
        values = std::move(filtered_values); 
    }
}

void DataFrame::fillna(const std::string& value) { 
    for(const auto& col: data) { 
        for(int i = 0; i< data.at(col.first).size(); i++) { 
            if(col.second[i] == "NaN") { data.at(col.first)[i] = value; }
        }
    }
}

// void DataFrame::show_frame() const { 

//     NULL; 
// }
