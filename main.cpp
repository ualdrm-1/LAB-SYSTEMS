#include <iostream>
#include <fstream>
#include <string>
#include "src/LinkedList.h"

int main() {
    LinkedList list;
    std::string inputFilePath;

    std::cout << "Введите путь к текстовому файлу: ";
    std::getline(std::cin, inputFilePath);

    try {
        readWordsFromFile(inputFilePath, list);
        const std::string outputFilePath = "ResultPairs.txt";
        writeResultFile(outputFilePath, list);

        std::ifstream outputFile(outputFilePath);
        if (!outputFile.is_open()) {
            throw std::runtime_error("Ошибка открытия выходного файла: " + outputFilePath);
        }

        std::string line;
        while (std::getline(outputFile, line)) {
            std::cout << line << std::endl;
        }

    } catch (const std::exception& e) {
        std::cerr << "Ошибка: " << e.what() << std::endl;
    }

    return 0;
}