version 1.0

task FoldCT file {
  input {
    String? sequenceSequenceFile
    String? ctCtFile
  }
  command <<<
    Fold CT file \
      ~{sequenceSequenceFile} \
      ~{ctCtFile}
  >>>
}