version 1.0

task Libbaf2sqlCso {
  command <<<
    libbaf2sql_c_so
  >>>
  output {
    File out_stdout = stdout()
  }
}