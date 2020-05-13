version 1.0

task SeqtkTrinity {
  input {
    String? seqSeqTk
    String? commandCommand
    String? argumentsArguments
  }
  command <<<
    seqtk-trinity \
      ~{seqSeqTk} \
      ~{commandCommand} \
      ~{argumentsArguments}
  >>>
}