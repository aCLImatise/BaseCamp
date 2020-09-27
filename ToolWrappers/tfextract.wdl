version 1.0

task Tfextract {
  command <<<
    tfextract
  >>>
  output {
    File out_stdout = stdout()
  }
}