version 1.0

task FermiRecode {
  input {
    String in_dot_rld
  }
  command <<<
    fermi recode \
      ~{in_dot_rld}
  >>>
  parameter_meta {
    in_dot_rld: ""
  }
}