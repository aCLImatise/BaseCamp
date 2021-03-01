version 1.0

task Drawgram {
  command <<<
    drawgram
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}