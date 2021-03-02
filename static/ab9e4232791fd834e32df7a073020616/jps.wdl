version 1.0

task Jps {
  command <<<
    jps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}