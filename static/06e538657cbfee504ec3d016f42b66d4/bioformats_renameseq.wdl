version 1.0

task BioformatsRenameseq {
  input {
    Boolean fastFastA
    String columnColumn
    Boolean revertRevert
    Boolean noNoDescription
    String commentCommentChar
    String separatorSeparator
    String? renamingRenamingTable
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    bioformats renameseq \
      ~{renamingRenamingTable} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(columnColumn) then ("--column " +  '"' + columnColumn + '"') else ""} \
      ~{true="--revert" false="" revertRevert} \
      ~{true="--no_description" false="" noNoDescription} \
      ~{if defined(commentCommentChar) then ("--comment_char " +  '"' + commentCommentChar + '"') else ""} \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{inputInputFile} \
      ~{outputOutputFile}
  >>>
}