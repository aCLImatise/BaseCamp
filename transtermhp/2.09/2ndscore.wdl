version 1.0

task Ndscore {
  command <<<
    _ndscore
  >>>
  output {
    File out_stdout = stdout()
  }
}