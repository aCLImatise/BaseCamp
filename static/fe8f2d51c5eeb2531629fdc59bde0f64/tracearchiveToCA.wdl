version 1.0

task TracearchiveToCA {
  command <<<
    tracearchiveToCA
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}