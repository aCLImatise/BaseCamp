version 1.0

task Acdpretty {
  command <<<
    _acdpretty
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}