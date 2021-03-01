version 1.0

task AutoSql {
  command <<<
    autoSql
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}