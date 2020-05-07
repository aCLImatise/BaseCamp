version 1.0

task SliceFastaFASTA fileStrand {
  input {
    String? sequenceSequenceName
    String? startStart
    String? endEnd
    String? strandStrand
  }
  command <<<
    slice_fasta FASTA file strand \
      ~{sequenceSequenceName} \
      ~{startStart} \
      ~{endEnd} \
      ~{strandStrand}
  >>>
}