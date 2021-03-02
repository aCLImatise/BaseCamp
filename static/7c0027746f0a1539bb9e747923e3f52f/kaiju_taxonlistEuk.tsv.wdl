version 1.0

task KaijutaxonlistEuktsv {
  command <<<
    kaiju_taxonlistEuk_tsv
  >>>
  runtime {
    docker: "quay.io/biocontainers/kaiju:1.7.4--h8b12597_0"
  }
  output {
    File out_stdout = stdout()
  }
}