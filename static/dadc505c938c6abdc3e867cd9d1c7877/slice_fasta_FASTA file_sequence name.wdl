version 1.0

task SliceFastaFASTA fileSequence name {
  command <<<
    slice_fasta FASTA file sequence name
  >>>
}