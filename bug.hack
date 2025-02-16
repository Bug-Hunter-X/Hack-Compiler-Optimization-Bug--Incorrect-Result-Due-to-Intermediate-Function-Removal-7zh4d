function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) - 1;
}

function main(): void {
  echo baz(5);
}
This code will compile and run correctly, but there is an uncommon error that may occur during optimization. If the compiler aggressively optimizes the code, it may try to remove intermediate functions such as `foo` and `bar`.  This could lead to unexpected behavior and incorrect results. This is because the intermediate functions are not properly inlined or their results are not correctly propagated during optimization.
