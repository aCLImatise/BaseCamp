version 1.0

task MafToBigMaf {
  input {
    String referenced_b
    String input_dot_maf
  }
  command <<<
    mafToBigMaf \
      ~{referenced_b} \
      ~{input_dot_maf}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    referenced_b: ""
    input_dot_maf: ""
  }
  output {
    File out_stdout = stdout()
  }
}