version 1.0

task ProteinAlignmentFromNucleotides {
  input {
    Boolean? nucleotide_alignment_mafft
    Boolean? verbose_output_stdout
  }
  command <<<
    protein_alignment_from_nucleotides \
      ~{if (nucleotide_alignment_mafft) then "-n" else ""} \
      ~{if (verbose_output_stdout) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nucleotide_alignment_mafft: "nucleotide alignment with MAFFT"
    verbose_output_stdout: "verbose output to STDOUT"
  }
  output {
    File out_stdout = stdout()
  }
}