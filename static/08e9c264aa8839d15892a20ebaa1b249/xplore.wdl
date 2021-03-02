version 1.0

task Xplore {
  command <<<
    xplore
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}