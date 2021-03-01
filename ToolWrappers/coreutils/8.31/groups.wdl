version 1.0

task Groups {
  command <<<
    groups
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}