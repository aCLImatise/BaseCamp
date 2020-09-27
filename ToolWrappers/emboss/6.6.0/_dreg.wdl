version 1.0

task Dreg {
  command <<<
    _dreg
  >>>
  output {
    File out_stdout = stdout()
  }
}