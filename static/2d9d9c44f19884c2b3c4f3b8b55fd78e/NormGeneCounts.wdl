version 1.0

task NormGeneCounts.py {
  input {
    String? geneGeneCountsFile
  }
  command <<<
    NormGeneCounts.py \
      ~{geneGeneCountsFile}
  >>>
}