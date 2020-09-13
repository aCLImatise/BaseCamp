version 1.0

task FastqToFastapl {
  command <<<
    fastqToFasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}