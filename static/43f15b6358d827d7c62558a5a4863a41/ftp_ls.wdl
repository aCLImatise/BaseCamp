version 1.0

task Ftpls {
  command <<<
    ftp_ls
  >>>
  output {
    File out_stdout = stdout()
  }
}