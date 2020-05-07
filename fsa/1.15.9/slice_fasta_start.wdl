version 1.0

task SliceFastaStart {
  input {
    String? fastFastAFile
    String? sequenceSequenceName
    String? startStart
    String? endEnd
    String? strandStrand
  }
  command <<<
    slice_fasta start \
      ~{fastFastAFile} \
      ~{sequenceSequenceName} \
      ~{startStart} \
      ~{endEnd} \
      ~{strandStrand}
  >>>
}