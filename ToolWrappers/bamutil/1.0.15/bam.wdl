version 1.0

task Bam {
  input {
    String tool
    String? tool_arguments
  }
  command <<<
    bam \
      ~{tool} \
      ~{tool_arguments}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bamutil:1.0.15--h8b12597_0"
  }
  parameter_meta {
    tool: ""
    tool_arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}