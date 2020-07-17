version 1.0

task Minimo {
  input {
    String fast_a_in
  }
  command <<<
    Minimo \
      ~{fast_a_in}
  >>>
  parameter_meta {
    fast_a_in: ""
  }
}