version 1.0

task NumCI {
  command <<<
    numCI
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}