version 1.0

task ExcludeSimilarProteinspl {
  command <<<
    exclude_similar_proteins_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}