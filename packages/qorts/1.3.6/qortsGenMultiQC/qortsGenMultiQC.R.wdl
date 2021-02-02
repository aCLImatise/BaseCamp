version 1.0

task QortsGenMultiQCR {
  command <<<
    qortsGenMultiQC_R
  >>>
  output {
    File out_stdout = stdout()
  }
}