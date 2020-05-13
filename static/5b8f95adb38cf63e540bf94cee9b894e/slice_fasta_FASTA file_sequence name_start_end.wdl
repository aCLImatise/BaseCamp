version 1.0

task SliceFastaFASTA fileSequence nameStartEnd {
  input {
    String? strandStrand
  }
  command <<<
    slice_fasta FASTA file sequence name start end \
      ~{strandStrand}
  >>>
}