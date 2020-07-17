version 1.0

task FermiPe2cofq {
  input {
    String in_one_dot_fq
    String in_two_dot_fq
  }
  command <<<
    fermi pe2cofq \
      ~{in_one_dot_fq} \
      ~{in_two_dot_fq}
  >>>
  parameter_meta {
    in_one_dot_fq: ""
    in_two_dot_fq: ""
  }
}