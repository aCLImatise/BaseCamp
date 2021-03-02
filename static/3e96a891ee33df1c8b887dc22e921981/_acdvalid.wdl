version 1.0

task Acdvalid {
  command <<<
    _acdvalid
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}