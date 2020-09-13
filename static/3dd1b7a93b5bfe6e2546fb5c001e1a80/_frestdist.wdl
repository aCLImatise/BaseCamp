version 1.0

task Frestdist {
  command <<<
    _frestdist
  >>>
  output {
    File out_stdout = stdout()
  }
}