version 1.0

task SraToSolid {
  input {
    String input_dot_fast_q
  }
  command <<<
    sra_to_solid \
      ~{input_dot_fast_q}
  >>>
  parameter_meta {
    input_dot_fast_q: ""
  }
}