#include "tissuereport.hpp"

using namespace std;

/*importParser
* Parses a line of the csv file into fields of EntryData struct
*/
void TR::TissueReport::importParser(string lineIn){

}

int tissueMonthFilter(std::string month, std::string year){
    
}

TR::TissueReport::TissueReport(){

}

TR::TissueReport::~TissueReport(){
    for(int i = 0; i < parsedLines.length(); i++){
        delete parsedLines[i];
        parsedLines[i] = NULL;
    }
    for(int i = 0; i < filteredLines.length(); i++){
        delete filteredLines[i];
        filteredLines[i] = NULL;
    }
    for(int i = 0; i < sortedLines.length(); i++){
        delete sortedLines[i];
        sortedLines[i] = NULL;
    }
}