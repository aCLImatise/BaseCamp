version 1.0

task RnftoolsCheck {
  input {
    String rnf_tools
  }
  command <<<
    rnftools check \
      ~{rnf_tools}
  >>>
  parameter_meta {
    rnf_tools: ""
  }
}