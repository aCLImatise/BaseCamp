version 1.0

task Ftpls {
  command <<<
    ftp_ls
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}