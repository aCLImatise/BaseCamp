version 1.0

task KaijutaxonlistEuktsv {
  command <<<
    kaiju_taxonlistEuk_tsv
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}