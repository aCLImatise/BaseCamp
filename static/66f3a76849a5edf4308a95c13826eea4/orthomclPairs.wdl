version 1.0

task OrthomclPairs {
  command <<<
    orthomclPairs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}