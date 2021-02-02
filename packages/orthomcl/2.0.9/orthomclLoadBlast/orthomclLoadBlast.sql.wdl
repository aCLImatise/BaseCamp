version 1.0

task OrthomclLoadBlastsql {
  command <<<
    orthomclLoadBlast_sql
  >>>
  output {
    File out_stdout = stdout()
  }
}