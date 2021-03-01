version 1.0

task Sqlitepl {
  command <<<
    sqlite_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}