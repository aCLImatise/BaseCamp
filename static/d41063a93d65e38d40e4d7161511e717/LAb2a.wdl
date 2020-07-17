version 1.0

task LAb2a {
  input {
    String la_a_two_b
  }
  command <<<
    LAb2a \
      ~{la_a_two_b}
  >>>
  parameter_meta {
    la_a_two_b: ""
  }
}