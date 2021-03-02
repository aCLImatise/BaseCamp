version 1.0

task Mean {
  command <<<
    mean
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}