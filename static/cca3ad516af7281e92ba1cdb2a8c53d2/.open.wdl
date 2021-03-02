version 1.0

task Open {
  command <<<
    _open
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}