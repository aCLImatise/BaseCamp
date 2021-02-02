version 1.0

task Rna2dnaplorig {
  command <<<
    rna2dna_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}