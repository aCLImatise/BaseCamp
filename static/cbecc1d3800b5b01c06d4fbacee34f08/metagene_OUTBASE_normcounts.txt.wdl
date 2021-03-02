version 1.0

task MetageneOUTBASENormcountstxt {
  input {
    String meta_gene
  }
  command <<<
    metagene OUTBASE_normcounts_txt \
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