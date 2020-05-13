version 1.0

task SliceFastaFASTA fileSequence nameStrand {
  input {
    String? startStart
    String? endEnd
    String? strandStrand
  }
  command <<<
    slice_fasta FASTA file sequence name strand \
      ~{startStart} \
      ~{endEnd} \
      ~{strandStrand}
  >>>
}