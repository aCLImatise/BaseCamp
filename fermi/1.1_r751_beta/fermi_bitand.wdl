version 1.0

task FermiBitand {
  input {
    String in_one_dot_bit
    String in_two_dot_bit
  }
  command <<<
    fermi bitand \
      ~{in_one_dot_bit} \
      ~{in_two_dot_bit}
  >>>
  parameter_meta {
    in_one_dot_bit: ""
    in_two_dot_bit: ""
  }
}