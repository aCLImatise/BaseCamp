version 1.0

task AlignmentToolsAlignNuclToProt {
  input {
    String align_nucleotide_to_protein
    String aligned_prot_seqs
    String unaligned_nucl_seqs
    String aligned_nucl_out
    String stats_out
  }
  command <<<
    AlignmentTools align-nucl-to-prot \
      ~{align_nucleotide_to_protein} \
      ~{aligned_prot_seqs} \
      ~{unaligned_nucl_seqs} \
      ~{aligned_nucl_out} \
      ~{stats_out}
  >>>
  parameter_meta {
    align_nucleotide_to_protein: ""
    aligned_prot_seqs: ""
    unaligned_nucl_seqs: ""
    aligned_nucl_out: ""
    stats_out: ""
  }
}