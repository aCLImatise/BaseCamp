version 1.0

task Geecee {
  command <<<
    _geecee
  >>>
  output {
    File out_stdout = stdout()
  }
}