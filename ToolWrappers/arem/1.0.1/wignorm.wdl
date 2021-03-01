version 1.0

task Wignorm {
  command <<<
    wignorm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}