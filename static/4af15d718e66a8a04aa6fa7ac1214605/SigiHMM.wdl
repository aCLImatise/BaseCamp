version 1.0

task SigiHMM {
  command <<<
    SigiHMM
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}