method Abs(x: int) returns (t: int)
  ensures 0 <= t
  ensures 0 <= x ==> t == x
{
  if x < 0 {
    return -x;
  } else {
    return x;
  }
}

method factorial(n: nat) returns (result: nat)
  decreases n  // This tells Dafny that `n` is strictly decreasing with each recursive call, ensuring termination.
  ensures result == if n == 0 then 1 else n * factorial(n - 1)  // Correctness of the factorial calculation
{
  if n == 0 {
    result := 1;
  } else {
    result := n * factorial(n - 1);
  }
}



