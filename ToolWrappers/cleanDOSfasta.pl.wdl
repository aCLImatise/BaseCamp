version 1.0

task CleanDOSfastapl {
  command <<<
    cleanDOSfasta_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}