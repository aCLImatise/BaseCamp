version 1.0

task Entropyanalysis {
  command <<<
    entropy_analysis
  >>>
  output {
    File out_stdout = stdout()
  }
}