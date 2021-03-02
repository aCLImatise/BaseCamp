version 1.0

task Vdbpasswd2 {
  command <<<
    vdb_passwd_2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}