version 1.0

task RnftoolsCheck {
  input {
    String rnf_tools
  }
  command <<<
    rnftools check \
      ~{rnf_tools}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rnf_tools: ""
  }
  output {
    File out_stdout = stdout()
  }
}