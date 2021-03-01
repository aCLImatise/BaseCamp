version 1.0

task RnftoolsPublicationAuthor {
  input {
    String rnf_tools
    String publication
  }
  command <<<
    rnftools publication author \
      ~{rnf_tools} \
      ~{publication}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    rnf_tools: ""
    publication: ""
  }
  output {
    File out_stdout = stdout()
  }
}