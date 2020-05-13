version 1.0

task FrgUmdMergeFrgFileUmdQualFile {
  input {
    String? umdUmdSeqFile
    String? umdUmdQualFile
  }
  command <<<
    frg-umd-merge frg-file umd-qual-file \
      ~{umdUmdSeqFile} \
      ~{umdUmdQualFile}
  >>>
}