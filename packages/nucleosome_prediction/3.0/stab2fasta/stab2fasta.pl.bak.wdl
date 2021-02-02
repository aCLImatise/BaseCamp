version 1.0

task Stab2fastaplbak {
  command <<<
    stab2fasta_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}