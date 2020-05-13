version 1.0

task SliceFastaEnd {
  input {
    String? fastFastAFile
    String? sequenceSequenceName
    String? startStart
    String? endEnd
    String? strandStrand
  }
  command <<<
    slice_fasta end \
      ~{fastFastAFile} \
      ~{sequenceSequenceName} \
      ~{startStart} \
      ~{endEnd} \
      ~{strandStrand}
  >>>
}