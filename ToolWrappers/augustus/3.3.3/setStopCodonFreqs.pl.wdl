version 1.0

task SetStopCodonFreqspl {
  command <<<
    setStopCodonFreqs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}