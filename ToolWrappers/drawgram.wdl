version 1.0

task Drawgram {
  command <<<
    drawgram
  >>>
  output {
    File out_stdout = stdout()
  }
}