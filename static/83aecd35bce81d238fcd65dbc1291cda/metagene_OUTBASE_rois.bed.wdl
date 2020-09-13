version 1.0

task MetageneOUTBASERoisbed {
  input {
    String meta_gene
  }
  command <<<
    metagene OUTBASE_rois_bed \
      ~{meta_gene}
  >>>
  parameter_meta {
    meta_gene: ""
  }
  output {
    File out_stdout = stdout()
  }
}