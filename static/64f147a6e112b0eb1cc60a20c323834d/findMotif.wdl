version 1.0

task FindMotif {
  input {
    Boolean verboseVerbose
    String? sequenceSequence
  }
  command <<<
    findMotif \
      ~{sequenceSequence} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}