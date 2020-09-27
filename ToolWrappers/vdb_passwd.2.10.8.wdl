version 1.0

task Vdbpasswd2108 {
  command <<<
    vdb_passwd_2_10_8
  >>>
  output {
    File out_stdout = stdout()
  }
}