version 1.0

task OrthomclLoadBlastsql {
  command <<<
    orthomclLoadBlast_sql
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}