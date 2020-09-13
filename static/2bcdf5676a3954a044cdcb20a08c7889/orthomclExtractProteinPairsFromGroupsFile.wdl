version 1.0

task OrthomclExtractProteinPairsFromGroupsFile {
  command <<<
    orthomclExtractProteinPairsFromGroupsFile
  >>>
  output {
    File out_stdout = stdout()
  }
}