version 1.0

task Saddlepl {
  command <<<
    saddle_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}