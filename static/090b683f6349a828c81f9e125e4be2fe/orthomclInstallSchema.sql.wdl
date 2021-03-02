version 1.0

task OrthomclInstallSchemasql {
  command <<<
    orthomclInstallSchema_sql
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}