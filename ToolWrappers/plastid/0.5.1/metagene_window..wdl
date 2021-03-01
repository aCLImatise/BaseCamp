version 1.0

task MetageneWindow {
  input {
    String meta_gene
  }
  command <<<
    metagene window_ \
      ~{meta_gene}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    meta_gene: ""
  }
  output {
    File out_stdout = stdout()
  }
}