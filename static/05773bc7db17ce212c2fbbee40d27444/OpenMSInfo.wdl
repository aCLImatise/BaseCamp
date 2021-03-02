version 1.0

task OpenMSInfo {
  command <<<
    OpenMSInfo
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}