version 1.0

task MetageneOUTBASERawcountstxt {
  input {
    String meta_gene
  }
  command <<<
    metagene OUTBASE_rawcounts_txt \
      ~{meta_gene}
  >>>
  parameter_meta {
    meta_gene: ""
  }
  output {
    File out_stdout = stdout()
  }
}