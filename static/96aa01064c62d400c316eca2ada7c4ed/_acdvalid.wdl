version 1.0

task Acdvalid {
  command <<<
    _acdvalid
  >>>
  output {
    File out_stdout = stdout()
  }
}