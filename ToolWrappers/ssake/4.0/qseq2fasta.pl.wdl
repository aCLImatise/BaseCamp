version 1.0

task Qseq2fastapl {
  command <<<
    qseq2fasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}