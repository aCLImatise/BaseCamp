version 1.0

task SigiHMM {
  command <<<
    SigiHMM
  >>>
  output {
    File out_stdout = stdout()
  }
}