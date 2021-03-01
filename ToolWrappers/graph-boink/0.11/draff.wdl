version 1.0

task Draff {
  command <<<
    draff
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}