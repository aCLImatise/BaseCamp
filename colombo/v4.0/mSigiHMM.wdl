version 1.0

task MSigiHMM {
  command <<<
    mSigiHMM
  >>>
  output {
    File out_stdout = stdout()
  }
}