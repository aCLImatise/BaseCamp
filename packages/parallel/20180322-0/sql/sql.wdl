version 1.0

task Sql {
  command <<<
    sql
  >>>
  output {
    File out_stdout = stdout()
  }
}