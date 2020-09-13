version 1.0

task Stssearch {
  command <<<
    _stssearch
  >>>
  output {
    File out_stdout = stdout()
  }
}