version 1.0

task Betweentwogenes {
  command <<<
    between_two_genes
  >>>
  output {
    File out_stdout = stdout()
  }
}