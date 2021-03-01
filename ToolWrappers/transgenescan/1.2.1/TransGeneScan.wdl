version 1.0

task TransGeneScan {
  command <<<
    TransGeneScan
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}