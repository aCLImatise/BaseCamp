version 1.0

task OrthomclExtractProteinPairsFromGroupsFile {
  command <<<
    orthomclExtractProteinPairsFromGroupsFile
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}