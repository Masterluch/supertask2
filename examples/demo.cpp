#include <area.hpp>
#include <iostream>

int main(int argc, char** argv)
{
  int a = atoi(argv[1]);
  int b = atoi(argv[2]);
  std::cout << area(a, b) << std::endl;
}
