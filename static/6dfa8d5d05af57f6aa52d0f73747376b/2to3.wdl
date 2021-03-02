version 1.0

task To3 {
  command <<<
    _to3
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}