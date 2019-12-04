include "globals.mzn";

par set of int: range;

array[0..5] of var 0..9: digits;
var range: code;

constraint
  code =
    digits[0] * 100000 +
    digits[1] * 10000 +
    digits[2] * 1000 +
    digits[3] * 100 +
    digits[4] * 10 +
    digits[5];

constraint
  exists (i in 0..4) (
    digits[i] == digits[i+1]
  );

constraint
  increasing(digits);

output [show(code)];

solve satisfy;
