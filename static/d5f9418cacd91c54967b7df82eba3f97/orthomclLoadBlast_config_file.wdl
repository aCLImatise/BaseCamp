version 1.0

task OrthomclLoadBlastConfigFile {
  input {
    String? similarSimilarSeqsFile
  }
  command <<<
    orthomclLoadBlast config_file \
      ~{similarSimilarSeqsFile}
  >>>
}