version 1.0

task Mafftsparsecorerb {
  command <<<
    mafft_sparsecore_rb
  >>>
  output {
    File out_stdout = stdout()
  }
}