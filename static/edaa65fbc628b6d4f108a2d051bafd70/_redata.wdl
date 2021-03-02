version 1.0

task Redata {
  command <<<
    _redata
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}