version 1.0

task Marscan {
  command <<<
    _marscan
  >>>
  output {
    File out_stdout = stdout()
  }
}