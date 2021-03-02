version 1.0

task Ratt {
  command <<<
    ratt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}