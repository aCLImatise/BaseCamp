version 1.0

task Rna2dnaplorig {
  command <<<
    rna2dna_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}