version 1.0

task Ftpcp {
  command <<<
    ftp_cp
  >>>
  output {
    File out_stdout = stdout()
  }
}