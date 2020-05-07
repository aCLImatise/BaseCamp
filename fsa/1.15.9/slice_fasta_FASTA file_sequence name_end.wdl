version 1.0

task SliceFastaFASTA fileSequence nameEnd {
  input {
    String? startStart
    String? endEnd
    String? strandStrand
  }
  command <<<
    slice_fasta FASTA file sequence name end \
      ~{startStart} \
      ~{endEnd} \
      ~{strandStrand}
  >>>
}