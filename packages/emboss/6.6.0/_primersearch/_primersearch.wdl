version 1.0

task Primersearch {
  command <<<
    _primersearch
  >>>
  output {
    File out_stdout = stdout()
  }
}