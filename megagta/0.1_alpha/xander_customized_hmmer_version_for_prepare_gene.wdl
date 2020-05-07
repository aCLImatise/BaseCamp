version 1.0

task XanderCustomizedHmmerVersionForPrepareGene.shDirectory {
  input {
    String? geneGene
  }
  command <<<
    xander_customized_hmmer_version_for_prepare_gene.sh directory \
      ~{geneGene}
  >>>
}