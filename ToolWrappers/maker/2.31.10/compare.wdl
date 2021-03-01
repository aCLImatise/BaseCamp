version 1.0

task Compare {
  command <<<
    compare
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}