version 1.0

task XanderCustomizedHmmerVersionForPrepareGene.shDirectory {
  input {
    String gene
  }
  command <<<
    xander_customized_hmmer_version_for_prepare_gene.sh directory \
      ~{gene}
  >>>
  parameter_meta {
    gene: ""
  }
}