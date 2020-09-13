version 1.0

task OrthomclInstallSchemasql {
  command <<<
    orthomclInstallSchema_sql
  >>>
  output {
    File out_stdout = stdout()
  }
}