version 1.0

task SliceFastaSequence name {
  input {
    String? fastFastAFile
    String? sequenceSequenceName
    String? startStart
    String? endEnd
    String? strandStrand
  }
  command <<<
    slice_fasta sequence name \
      ~{fastFastAFile} \
      ~{sequenceSequenceName} \
      ~{startStart} \
      ~{endEnd} \
      ~{strandStrand}
  >>>
}