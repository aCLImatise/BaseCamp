version 1.0

task Bwamempy {
  input {
    String? indexIndex
    String? sequenceSequence
  }
  command <<<
    bwamempy \
      ~{indexIndex} \
      ~{sequenceSequence}
  >>>
}