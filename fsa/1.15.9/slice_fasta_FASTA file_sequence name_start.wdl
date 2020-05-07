version 1.0

task SliceFastaFASTA fileSequence nameStart {
  command <<<
    slice_fasta FASTA file sequence name start
  >>>
}