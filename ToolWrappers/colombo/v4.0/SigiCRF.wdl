version 1.0

task SigiCRF {
  command <<<
    SigiCRF
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}