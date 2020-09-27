version 1.0

task MsToGlf {
  command <<<
    msToGlf
  >>>
  output {
    File out_stdout = stdout()
  }
}