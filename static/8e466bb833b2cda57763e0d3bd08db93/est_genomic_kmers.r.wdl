version 1.0

task Estgenomickmersr {
  command <<<
    est_genomic_kmers_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}