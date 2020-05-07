version 1.0

task SliceFastaFASTA fileSequence nameStartStrand {
  input {
    String? endEnd
    String? strandStrand
  }
  command <<<
    slice_fasta FASTA file sequence name start strand \
      ~{endEnd} \
      ~{strandStrand}
  >>>
}