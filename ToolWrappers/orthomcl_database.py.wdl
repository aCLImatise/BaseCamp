version 1.0

task OrthomclDatabasepy {
  command <<<
    orthomcl_database_py
  >>>
  output {
    File out_stdout = stdout()
  }
}