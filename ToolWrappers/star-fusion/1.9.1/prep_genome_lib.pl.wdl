version 1.0

task PrepGenomeLibpl {
  command <<<
    prep_genome_lib_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/star-fusion:1.9.1--0"
  }
  output {
    File out_stdout = stdout()
  }
}