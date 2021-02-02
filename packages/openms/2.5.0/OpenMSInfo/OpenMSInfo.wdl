version 1.0

task OpenMSInfo {
  command <<<
    OpenMSInfo
  >>>
  output {
    File out_stdout = stdout()
  }
}