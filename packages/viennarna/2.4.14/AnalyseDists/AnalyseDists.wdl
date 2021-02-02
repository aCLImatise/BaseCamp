version 1.0

task AnalyseDists {
  command <<<
    AnalyseDists
  >>>
  output {
    File out_stdout = stdout()
  }
}