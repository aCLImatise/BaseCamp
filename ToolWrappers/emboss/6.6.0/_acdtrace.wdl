version 1.0

task Acdtrace {
  command <<<
    _acdtrace
  >>>
  output {
    File out_stdout = stdout()
  }
}