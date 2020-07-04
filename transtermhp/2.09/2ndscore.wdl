version 1.0

task 2ndscore {
  input {
    String in_dot_fast_a
  }
  command <<<
    2ndscore \
      ~{in_dot_fast_a}
  >>>
  parameter_meta {
    in_dot_fast_a: ""
  }
}