version 1.0

task Vdbpasswd {
  command <<<
    vdb_passwd
  >>>
  output {
    File out_stdout = stdout()
  }
}