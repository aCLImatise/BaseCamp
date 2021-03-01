version 1.0

task Sqlitebrowser {
  command <<<
    sqlitebrowser
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}