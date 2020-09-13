version 1.0

task OrthomclPairs {
  command <<<
    orthomclPairs
  >>>
  output {
    File out_stdout = stdout()
  }
}