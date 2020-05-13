version 1.0

task OrthomclLoadBlastSimilarSeqsFile {
  input {
    String? configConfigFile
    String? similarSimilarSeqsFile
  }
  command <<<
    orthomclLoadBlast similar_seqs_file \
      ~{configConfigFile} \
      ~{similarSimilarSeqsFile}
  >>>
}