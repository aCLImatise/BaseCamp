version 1.0

task NEWS {
  command <<<
    NEWS
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}