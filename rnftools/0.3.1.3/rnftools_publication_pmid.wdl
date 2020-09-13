version 1.0

task RnftoolsPublicationPmid {
  input {
    String rnf_tools
    String publication
  }
  command <<<
    rnftools publication pmid \
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