version 1.0

task Rna2dnapl {
  command <<<
    rna2dna_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}