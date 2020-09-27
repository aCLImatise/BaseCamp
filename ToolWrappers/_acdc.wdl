version 1.0

task Acdc {
  command <<<
    _acdc
  >>>
  output {
    File out_stdout = stdout()
  }
}