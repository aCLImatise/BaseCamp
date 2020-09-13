version 1.0

task OrthomclExtractProteinIdsFromGroupsFile {
  command <<<
    orthomclExtractProteinIdsFromGroupsFile
  >>>
  output {
    File out_stdout = stdout()
  }
}