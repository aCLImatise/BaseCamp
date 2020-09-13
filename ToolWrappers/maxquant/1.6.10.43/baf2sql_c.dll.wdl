version 1.0

task Baf2sqlCdll {
  command <<<
    baf2sql_c_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}