version 1.0

task ExtractSeqs {
  command <<<
    extractSeqs
  >>>
  output {
    File out_stdout = stdout()
  }
}