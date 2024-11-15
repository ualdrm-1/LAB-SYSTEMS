## ABOUT
The input file is (full path, for example, `/home/usr/Files/WordsList.txt`). The output in the console will be the contents of the file `ResultPairs.txt` (if it does not exist, it will be created automatically).
## INSTALATION
This project uses CMake for building. A brief getting started guide for creating a build with CMake follows:
1. Make a new directory for storing the build;
2. cd into the directory;
3. Run `cmake ..`;
4. Run `make`;
5. Run the `./my`.

## INFRASTRUCTURE NOTES:
There are 2 classes in the code:
1. `Node` - class for nodes of a singly linked list;
2. `LinkedList` - singly linked list;

The `src` folder contains the class header files and their implementation.<br>
Along with the classes there are also functions for loading and reading files