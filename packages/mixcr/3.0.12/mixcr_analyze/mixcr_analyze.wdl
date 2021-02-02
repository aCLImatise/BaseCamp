version 1.0

task MixcrAnalyze {
  command <<<
    mixcr analyze
  >>>
  output {
    File out_stdout = stdout()
  }
}