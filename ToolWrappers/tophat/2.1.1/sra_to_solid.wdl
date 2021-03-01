version 1.0

task SraToSolid {
  input {
    String input_dot_fast_q
  }
  command <<<
    sra_to_solid \
      ~{input_dot_fast_q}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}