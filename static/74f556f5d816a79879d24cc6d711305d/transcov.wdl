version 1.0

task Transcov {
  command <<<
    transcov
  >>>
  output {
    File out_stdout = stdout()
  }
}