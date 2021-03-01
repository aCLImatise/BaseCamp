version 1.0

task Alnselpl {
  input {
    String input_dot_aln
  }
  command <<<
    alnsel_pl \
      ~{input_dot_aln}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dot_aln: ""
  }
  output {
    File out_stdout = stdout()
  }
}