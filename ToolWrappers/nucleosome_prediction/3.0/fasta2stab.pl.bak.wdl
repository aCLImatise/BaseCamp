version 1.0

task Fasta2stabplbak {
  command <<<
    fasta2stab_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}