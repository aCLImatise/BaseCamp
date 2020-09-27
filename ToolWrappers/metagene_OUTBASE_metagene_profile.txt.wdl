version 1.0

task MetageneOUTBASEMetageneProfiletxt {
  input {
    String meta_gene
  }
  command <<<
    metagene OUTBASE_metagene_profile_txt \
      ~{meta_gene}
  >>>
  parameter_meta {
    meta_gene: ""
  }
  output {
    File out_stdout = stdout()
  }
}