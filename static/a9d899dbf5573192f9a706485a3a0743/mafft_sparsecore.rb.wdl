version 1.0

task Mafftsparsecorerb {
  command <<<
    mafft_sparsecore_rb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}