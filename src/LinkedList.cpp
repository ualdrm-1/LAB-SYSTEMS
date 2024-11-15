#include "LinkedList.h"

void LinkedList::Add(const std::string& word) {
    Node* current = head.get();
    Node* prev = nullptr;
    while (current) {
        if (current->word == word) {
            current->count++;
            return;
        }
        prev = current;
        current = current->next.get();
    }
    auto newNode = std::make_unique<Node>(word);
    if (prev) {
        prev->next = std::move(newNode);
    } else {
        head = std::move(newNode);
    }
}

std::vector<std::pair<std::string, int>> LinkedList::ToVector() {
    std::vector<std::pair<std::string, int>> result;
    Node* current = head.get();
    while (current) {
        result.emplace_back(current->word, current->count);
        current = current->next.get();
    }
    return result;
}

void readWordsFromFile(const std::string& filename, LinkedList& list) {
    std::ifstream file(filename);
    if (!file.is_open()) {
        throw std::runtime_error("Ошибка открытия файла: " + filename);
    }

    std::string word;
    while (file >> word) {
        std::string cleanWord;
        for (char c : word) {
            if (std::isalpha(c)) {
                cleanWord += std::tolower(c);
            }
        }
        if (!cleanWord.empty() && cleanWord.size() <= 50) {
            list.Add(cleanWord);
        }
    }
}

void writeResultFile(const std::string& filename, LinkedList& list) {
    auto wordCounts = list.ToVector();

    std::sort(wordCounts.begin(), wordCounts.end(), [](const auto& a, const auto& b) {
        if (a.second == b.second) {
            return a.first < b.first;
        }
        return a.second > b.second;
    });

    std::ofstream outfile(filename);
    if (!outfile.is_open()) {
        throw std::runtime_error("Ошибка открытия файла: " + filename);
    }

    for (const auto& pair : wordCounts) {
        outfile << pair.first << " - " << pair.second << std::endl;
    }
}