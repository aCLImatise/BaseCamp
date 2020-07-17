version 1.0

task FermiFltuniq {
  input {
    String in_dot_fa
  }
  command <<<
    fermi fltuniq \
      ~{in_dot_fa}
  >>>
  parameter_meta {
    in_dot_fa: ""
  }
}