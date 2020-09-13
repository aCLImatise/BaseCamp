version 1.0

task RnftoolsPublicationNumber {
  input {
    String rnf_tools
    String publication
  }
  command <<<
    rnftools publication number \
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