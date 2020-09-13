version 1.0

task SigiCRF {
  command <<<
    SigiCRF
  >>>
  output {
    File out_stdout = stdout()
  }
}