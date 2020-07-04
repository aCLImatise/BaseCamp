version 1.0

task ProteinAlignmentFromNucleotides {
  input {
    Boolean? nucleotide_alignment_mafft
    Boolean? verbose_output_stdout
  }
  command <<<
    protein_alignment_from_nucleotides \
      ~{true="-n" false="" nucleotide_alignment_mafft} \
      ~{true="-v" false="" verbose_output_stdout}
  >>>
  parameter_meta {
    nucleotide_alignment_mafft: "nucleotide alignment with MAFFT"
    verbose_output_stdout: "verbose output to STDOUT"
  }
}