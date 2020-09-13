version 1.0

task BbAnalyze {
  command <<<
    bbAnalyze
  >>>
  output {
    File out_stdout = stdout()
  }
}