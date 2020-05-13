version 1.0

task FrgUmdMergeUmdQualFile {
  input {
    String? frgFrgFile
    String? umdUmdSeqFile
    String? umdUmdQualFile
  }
  command <<<
    frg-umd-merge umd-qual-file \
      ~{frgFrgFile} \
      ~{umdUmdSeqFile} \
      ~{umdUmdQualFile}
  >>>
}