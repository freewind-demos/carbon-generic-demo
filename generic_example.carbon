// Carbon 泛型
package GenericExample api;

fn Swap[T:! Movable](a: T, b: T) -> (T, T) {
  return (b, a);
}

fn Double[T:! Mul &! Fromi32](x: T) -> T {
  return x * 2;
}

fn Main() -> i32 {
  let (x, y): (i32, i32) = Swap(5, 10);
  Print("Swapped: ({0}, {1})", x, y);

  let doubled: i32 = Double(21);
  Print("Doubled: {0}", doubled);

  return 0;
}
