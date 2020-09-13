version 1.0

task Sqlitebrowser {
  command <<<
    sqlitebrowser
  >>>
  output {
    File out_stdout = stdout()
  }
}