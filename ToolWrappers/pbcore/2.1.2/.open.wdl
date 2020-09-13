version 1.0

task Open {
  command <<<
    _open
  >>>
  output {
    File out_stdout = stdout()
  }
}