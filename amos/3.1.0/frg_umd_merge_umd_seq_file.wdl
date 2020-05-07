version 1.0

task FrgUmdMergeUmdSeqFile {
  input {
    String? frgFrgFile
    String? umdUmdSeqFile
    String? umdUmdQualFile
  }
  command <<<
    frg-umd-merge umd-seq-file \
      ~{frgFrgFile} \
      ~{umdUmdSeqFile} \
      ~{umdUmdQualFile}
  >>>
}