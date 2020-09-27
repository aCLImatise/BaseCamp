version 1.0

task XanderCustomizedHmmerVersionForPrepareGenesh {
  input {
    String gene
  }
  command <<<
    xander_customized_hmmer_version_for_prepare_gene_sh \
      ~{gene}
  >>>
  parameter_meta {
    gene: ""
  }
  output {
    File out_stdout = stdout()
  }
}