version 1.0

task Pedwipe {
  command <<<
    pedwipe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}