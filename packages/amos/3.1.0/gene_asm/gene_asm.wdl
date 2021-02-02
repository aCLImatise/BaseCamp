version 1.0

task GeneAsm {
  command <<<
    gene_asm
  >>>
  output {
    File out_stdout = stdout()
  }
}