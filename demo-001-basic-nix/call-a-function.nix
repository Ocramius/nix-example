let
  add1 = a: a + 1;
  multiplyTwoNumbers = { a, b ? 2 }: a * b;
  in {
   result1 = add1 123;
   result2 = multiplyTwoNumbers { a = 3; b = 5; };
   result3 = multiplyTwoNumbers { a = 3; };
  }