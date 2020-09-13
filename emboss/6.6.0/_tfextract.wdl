version 1.0

task Tfextract {
  command <<<
    _tfextract
  >>>
  output {
    File out_stdout = stdout()
  }
}