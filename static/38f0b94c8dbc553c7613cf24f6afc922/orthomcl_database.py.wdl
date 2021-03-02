version 1.0

task OrthomclDatabasepy {
  command <<<
    orthomcl_database_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}