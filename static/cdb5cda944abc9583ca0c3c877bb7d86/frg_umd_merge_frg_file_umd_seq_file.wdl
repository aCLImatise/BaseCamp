version 1.0

task FrgUmdMergeFrgFileUmdSeqFile {
  input {
    String? umdUmdQualFile
  }
  command <<<
    frg-umd-merge frg-file umd-seq-file \
      ~{umdUmdQualFile}
  >>>
}