version 1.0

task MSigiHMM {
  command <<<
    mSigiHMM
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}