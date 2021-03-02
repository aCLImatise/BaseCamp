version 1.0

task Acdgalaxy {
  command <<<
    acdgalaxy
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}