version 1.0

task RmOut2Fastapl {
  command <<<
    rmOut2Fasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}