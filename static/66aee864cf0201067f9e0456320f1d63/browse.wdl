version 1.0

task Browse {
  command <<<
    browse
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}