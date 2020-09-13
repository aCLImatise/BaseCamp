version 1.0

task TauFastapl {
  command <<<
    TauFasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}