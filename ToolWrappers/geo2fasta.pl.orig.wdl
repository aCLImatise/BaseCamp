version 1.0

task Geo2fastaplorig {
  command <<<
    geo2fasta_pl_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}