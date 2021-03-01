version 1.0

task Stringiphy {
  input {
    String exons_dot_gff
  }
  command <<<
    stringiphy \
      ~{exons_dot_gff}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    exons_dot_gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}