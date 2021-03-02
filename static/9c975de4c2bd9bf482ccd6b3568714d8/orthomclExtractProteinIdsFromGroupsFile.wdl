version 1.0

task OrthomclExtractProteinIdsFromGroupsFile {
  command <<<
    orthomclExtractProteinIdsFromGroupsFile
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}