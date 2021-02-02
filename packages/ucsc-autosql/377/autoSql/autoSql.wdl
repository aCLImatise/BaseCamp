version 1.0

task AutoSql {
  command <<<
    autoSql
  >>>
  output {
    File out_stdout = stdout()
  }
}