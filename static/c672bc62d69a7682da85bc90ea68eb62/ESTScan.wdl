version 1.0

task ESTScan {
  command <<<
    ESTScan
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}