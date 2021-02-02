version 1.0

task LAb2a {
  input {
    Int la_a_two_b
  }
  command <<<
    LAb2a \
      ~{la_a_two_b}
  >>>
  parameter_meta {
    la_a_two_b: ""
  }
  output {
    File out_stdout = stdout()
  }
}