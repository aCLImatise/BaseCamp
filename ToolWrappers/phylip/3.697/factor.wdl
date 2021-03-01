version 1.0

task Factor {
  command <<<
    factor
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}