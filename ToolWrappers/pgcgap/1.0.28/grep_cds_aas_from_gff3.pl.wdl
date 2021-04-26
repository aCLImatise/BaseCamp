version 1.0

task GrepCdsAasFromGff3pl {
  command <<<
    grep_cds_aas_from_gff3_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/pgcgap:1.0.28--py37pl5262hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}