version 1.0

task OrthomclDatabase {
  command <<<
    orthomcl_database
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}