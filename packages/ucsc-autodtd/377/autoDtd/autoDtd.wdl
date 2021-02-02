version 1.0

task AutoDtd {
  command <<<
    autoDtd
  >>>
  output {
    File out_stdout = stdout()
  }
}