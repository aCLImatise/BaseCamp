version 1.0

task Acdtrace {
  command <<<
    _acdtrace
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}