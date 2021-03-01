version 1.0

task Vdbpasswd {
  command <<<
    vdb_passwd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}