version 1.0

task Bam {
  input {
    String tool
  }
  command <<<
    bam \
      ~{tool}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tool: ""
  }
  output {
    File out_stdout = stdout()
  }
}