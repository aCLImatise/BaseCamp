version 1.0

task MsHOT2glf {
  command <<<
    msHOT2glf
  >>>
  output {
    File out_stdout = stdout()
  }
}