version 1.0

task SliceFastaStrand {
  input {
    String? fastFastAFile
    String? sequenceSequenceName
    String? startStart
    String? endEnd
    String? strandStrand
  }
  command <<<
    slice_fasta strand \
      ~{fastFastAFile} \
      ~{sequenceSequenceName} \
      ~{startStart} \
      ~{endEnd} \
      ~{strandStrand}
  >>>
}