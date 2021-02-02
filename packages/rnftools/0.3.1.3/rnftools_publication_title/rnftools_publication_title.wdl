version 1.0

task RnftoolsPublicationTitle {
  input {
    String rnf_tools
    String publication
  }
  command <<<
    rnftools publication title \
      ~{rnf_tools} \
      ~{publication}
  >>>
  parameter_meta {
    rnf_tools: ""
    publication: ""
  }
  output {
    File out_stdout = stdout()
  }
}