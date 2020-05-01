version 1.0

task ProteinAlignmentFromNucleotides {
  input {
    Boolean nN
    Boolean vV
  }
  command <<<
    protein_alignment_from_nucleotides \
      ~{true="-n" false="" nN} \
      ~{true="-v" false="" vV}
  >>>
}