version 1.0

task KaKsAnalysis {
  command <<<
    KaKsAnalysis
  >>>
  output {
    File out_stdout = stdout()
  }
}