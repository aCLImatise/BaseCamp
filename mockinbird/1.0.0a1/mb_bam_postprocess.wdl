version 1.0

task Mbbampostprocess {
  input {
    Int? min_length
    String? mut_edge_bp
    Int? max_transitions
    Int? min_base_quality
    String? avg_alignment_quality
    Int? min_mismatch_quality
    String? transition_of_interest
    Boolean? dump_raw_data
  }
  command <<<
    mb_bam_postprocess \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(mut_edge_bp) then ("--mut_edge_bp " +  '"' + mut_edge_bp + '"') else ""} \
      ~{if defined(max_transitions) then ("--max_transitions " +  '"' + max_transitions + '"') else ""} \
      ~{if defined(min_base_quality) then ("--min_base_quality " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(avg_alignment_quality) then ("--avg_alignment_quality " +  '"' + avg_alignment_quality + '"') else ""} \
      ~{if defined(min_mismatch_quality) then ("--min_mismatch_quality " +  '"' + min_mismatch_quality + '"') else ""} \
      ~{if defined(transition_of_interest) then ("--transition_of_interest " +  '"' + transition_of_interest + '"') else ""} \
      ~{if (dump_raw_data) then "--dump_raw_data" else ""}
  >>>
  parameter_meta {
    min_length: "minimum alignment length in bp"
    mut_edge_bp: "bp at the start and end of an alignment that cannot\\ncontain transitions"
    max_transitions: "maximum number of transitions per alignment"
    min_base_quality: "minimum base quality for aligned bases"
    avg_alignment_quality: "minimum average alignment quality"
    min_mismatch_quality: "minimum transition base quality"
    transition_of_interest: "characteristic PAR-CLIP transition"
    dump_raw_data: "write out mismatch data for manual analysis"
  }
  output {
    File out_stdout = stdout()
  }
}