version 1.0

task SelectLongestReads {
  command <<<
    SelectLongestReads
  >>>
  output {
    File out_stdout = stdout()
  }
}