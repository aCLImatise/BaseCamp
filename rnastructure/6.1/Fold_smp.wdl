version 1.0

task FoldSmp {
  input {
    String? foldFold
    String? sequenceSequenceFile
    String? ctCtFile
  }
  command <<<
    Fold-smp \
      ~{foldFold} \
      ~{sequenceSequenceFile} \
      ~{ctCtFile}
  >>>
}