version 1.0

task Acdtrace {
  command <<<
    acdtrace
  >>>
  output {
    File out_stdout = stdout()
  }
}