version 1.0

task KaijutaxonlistEuktsv {
  command <<<
    kaiju_taxonlistEuk_tsv
  >>>
  output {
    File out_stdout = stdout()
  }
}