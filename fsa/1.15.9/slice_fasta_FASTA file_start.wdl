version 1.0

task SliceFastaFASTA fileStart {
  input {
    String? sequenceSequenceName
    String? startStart
    String? endEnd
    String? strandStrand
  }
  command <<<
    slice_fasta FASTA file start \
      ~{sequenceSequenceName} \
      ~{startStart} \
      ~{endEnd} \
      ~{strandStrand}
  >>>
}