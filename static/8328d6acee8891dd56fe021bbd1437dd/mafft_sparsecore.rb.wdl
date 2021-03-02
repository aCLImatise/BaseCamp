version 1.0

task Mafftsparsecorerb {
  command <<<
    mafft_sparsecore_rb
  >>>
  runtime {
    docker: "quay.io/biocontainers/mafft:7.475--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}