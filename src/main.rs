#[link(name = "universal")]
extern "C" {
  fn hello();
}

fn main() {
  unsafe { hello(); }
}
