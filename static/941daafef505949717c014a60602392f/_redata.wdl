version 1.0

task Redata {
  command <<<
    _redata
  >>>
  output {
    File out_stdout = stdout()
  }
}