version 1.0

task SetStopCodonFreqspl {
  command <<<
    setStopCodonFreqs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}