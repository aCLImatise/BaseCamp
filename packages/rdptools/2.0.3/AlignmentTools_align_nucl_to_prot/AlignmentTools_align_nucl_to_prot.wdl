version 1.0

task AlignmentToolsAlignnucltoprot {
  input {
    String align_nucleotide_to_protein
    String aligned_prot_seqs
    String unaligned_nucl_seqs
    String aligned_nucl_out
    String stats_out
  }
  command <<<
    AlignmentTools align_nucl_to_prot \
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
  output {
    File out_stdout = stdout()
  }
}