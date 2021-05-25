#include <BIN.hpp>
#include <gtest/gtest.h>
#include <iostream>

TEST(area, Test1)
{
  int a = 5;
  int b = 7;

int answer = area(a, b);
int true_answer = 35;

  EXPECT_EQ(true_answer, answer);
}
