version 1.0

task Weedamb {
  input {
    String? seqSeqFileIn
  }
  command <<<
    weedamb \
      ~{seqSeqFileIn}
  >>>
}