version 1.0

task MetageneOUTBASEMasktxt {
  input {
    String meta_gene
  }
  command <<<
    metagene OUTBASE_mask_txt \
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