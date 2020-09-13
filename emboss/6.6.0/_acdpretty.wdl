version 1.0

task Acdpretty {
  command <<<
    _acdpretty
  >>>
  output {
    File out_stdout = stdout()
  }
}