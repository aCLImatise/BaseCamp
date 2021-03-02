version 1.0

task Ftpcp {
  command <<<
    ftp_cp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}