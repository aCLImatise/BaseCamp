version 1.0

task Stab2fastapl {
  command <<<
    stab2fasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}