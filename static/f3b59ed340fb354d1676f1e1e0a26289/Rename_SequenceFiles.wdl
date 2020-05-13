version 1.0

task RenameSequenceFiles.sh {
  input {
    String? renameRenameForDDocentsH
    String? namesNamesFile
  }
  command <<<
    Rename_SequenceFiles.sh \
      ~{renameRenameForDDocentsH} \
      ~{namesNamesFile}
  >>>
}