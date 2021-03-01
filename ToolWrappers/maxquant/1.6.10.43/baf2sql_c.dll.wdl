version 1.0

task Baf2sqlCdll {
  command <<<
    baf2sql_c_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}