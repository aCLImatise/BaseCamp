version 1.0

task Go2owl {
  command <<<
    go2owl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}