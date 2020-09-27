version 1.0

task OrthomclDatabase {
  command <<<
    orthomcl_database
  >>>
  output {
    File out_stdout = stdout()
  }
}