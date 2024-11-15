#ifndef LINKEDLIST_H
#define LINKEDLIST_H

#include <fstream>
#include <string>
#include <memory>
#include <vector>
#include <algorithm>
#include <cctype>
#include <exception>

class Node {
public:
    std::string word;
    int count;
    std::unique_ptr<Node> next;

    Node(const std::string& w) : word(w), count(1), next(nullptr) {}
};

class LinkedList {
public:
    std::unique_ptr<Node> head;

    void Add(const std::string& word);
    std::vector<std::pair<std::string, int>> ToVector();
};

void writeResultFile(const std::string& filename, LinkedList& list);
void readWordsFromFile(const std::string& filename, LinkedList& list);

#endif // LINKEDLIST_H
