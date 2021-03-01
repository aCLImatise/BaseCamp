version 1.0

task QortsGenMultiQCR {
  command <<<
    qortsGenMultiQC_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}