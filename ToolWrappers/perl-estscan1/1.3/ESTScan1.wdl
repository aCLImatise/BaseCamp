version 1.0

task ESTScan1 {
  command <<<
    ESTScan1
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}