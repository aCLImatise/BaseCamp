version 1.0

task _fasta2gsipl {
  command <<<
    __fasta2gsi_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}