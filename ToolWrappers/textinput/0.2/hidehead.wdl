version 1.0

task Hidehead {
  command <<<
    hidehead
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}