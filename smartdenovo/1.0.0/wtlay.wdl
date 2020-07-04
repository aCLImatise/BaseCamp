version 1.0

task Wtlay {
  input {
    String? long_reads_files
    String? long_reads_region
    String? overlap_files_readsttlentbegtendtreadsttlentbegtendtscore
    Int? minimum_alignment_matched
    Float? minimum_alignment_identity
    Int? maximum_margin_alignment
    String? output_file_layouts
    Boolean? force_overwrite_output
    Int? minimum_estimated_coverage
    Boolean? use_number_matches
    Float? best_score_cutoff
    Float? minimum_coverage_similar
    Int? min_nodes_layout
    Int? maximum_step_tracing
    Float? variance_threshold_alignment
    String? commands_g_printdotstrgraph
  }
  command <<<
    wtlay \
      ~{if defined(long_reads_files) then ("-i " +  '"' + long_reads_files + '"') else ""} \
      ~{if defined(long_reads_region) then ("-b " +  '"' + long_reads_region + '"') else ""} \
      ~{if defined(overlap_files_readsttlentbegtendtreadsttlentbegtendtscore) then ("-j " +  '"' + overlap_files_readsttlentbegtendtreadsttlentbegtendtscore + '"') else ""} \
      ~{if defined(minimum_alignment_matched) then ("-s " +  '"' + minimum_alignment_matched + '"') else ""} \
      ~{if defined(minimum_alignment_identity) then ("-m " +  '"' + minimum_alignment_identity + '"') else ""} \
      ~{if defined(maximum_margin_alignment) then ("-w " +  '"' + maximum_margin_alignment + '"') else ""} \
      ~{if defined(output_file_layouts) then ("-o " +  '"' + output_file_layouts + '"') else ""} \
      ~{true="-f" false="" force_overwrite_output} \
      ~{if defined(minimum_estimated_coverage) then ("-c " +  '"' + minimum_estimated_coverage + '"') else ""} \
      ~{true="-R" false="" use_number_matches} \
      ~{if defined(best_score_cutoff) then ("-r " +  '"' + best_score_cutoff + '"') else ""} \
      ~{if defined(minimum_coverage_similar) then ("-q " +  '"' + minimum_coverage_similar + '"') else ""} \
      ~{if defined(min_nodes_layout) then ("-u " +  '"' + min_nodes_layout + '"') else ""} \
      ~{if defined(maximum_step_tracing) then ("-B " +  '"' + maximum_step_tracing + '"') else ""} \
      ~{if defined(variance_threshold_alignment) then ("-S " +  '"' + variance_threshold_alignment + '"') else ""} \
      ~{if defined(commands_g_printdotstrgraph) then ("-Q " +  '"' + commands_g_printdotstrgraph + '"') else ""}
  >>>
  parameter_meta {
    long_reads_files: "Long reads sequences file(s), + *"
    long_reads_region: "Long reads retained region, often from wtobt, + Format: read_name\toffset\tlength\toriginal_len"
    overlap_files_readsttlentbegtendtreadsttlentbegtendtscore: "Overlap file(s), + * Format: reads1\t+/-\tlen1\tbeg1\tend1\treads2\t+/-\tlen2\tbeg2\tend2\tscore"
    minimum_alignment_matched: "Minimum alignment matched bases, [500]"
    minimum_alignment_identity: "Minimum alignment identity, [0.6]"
    maximum_margin_alignment: "Maximum margin of alignment, [100]"
    output_file_layouts: "Output file of layouts, *"
    force_overwrite_output: "Force overwrite output file"
    minimum_estimated_coverage: "Minimum estimated coverage of edge to be trusted, [1] edge coverage is calculated by counting overlaps that can replace this edge"
    use_number_matches: "Use number of matches as alignment score"
    best_score_cutoff: "Best score cutoff, say best overlap MUST have alignment score >= <-r> * read's best score [0.95]"
    minimum_coverage_similar: "Minimum coverage for similar unitig detection, say the aligned length of unitig A by unitig B, divided by total length of unitig A, [0.4]"
    min_nodes_layout: "Min nodes of a layout to be output as independent unitig, [4]"
    maximum_step_tracing: "Maximum step in tracing bubbles, [20]"
    variance_threshold_alignment: "Variance threshold of (alignment score / overlap) between ture and false overlaps, [0.50] Used in better_overlap_strgraph"
    commands_g_printdotstrgraph: "Commands, [gCwgBgRURg] G: print_dot_strgraph g: print_simple_dot_strgraph w: mask_low_cov_edge_strgraph C: mask_contained_reads_strgraph B: best_overlap_strgraph t: bog_cut_tips_strgraph M: bog_merge_bubbles_strgraph U: recover_edges_inter_unitigs_strgraph R: repair_best_overlap_strgraph b: better_overlap_strgraph O: mask_self_circle_reads_strgraph T: reduce_transitive_strgraph L: longest_overlap_strgraph .: exit program"
  }
}