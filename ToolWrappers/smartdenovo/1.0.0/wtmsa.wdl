version 1.0

task Wtmsa {
  input {
    Int? total_parallel_jobs
    Int? index_current_cpu
    File? input_file_layout
    File? output_file_sequences
    File? print_backbone_sequences
    File? print_dot_graph
    Boolean? force_overwrite
    Boolean? trun_homopolymer_compression
    Int? zmer_window
    Int? minimum_size_seeding
    Int? maximum_variant_uncompressed
    Int? alignment_penalty_match
    Int? alignment_penalty_mismatch
    Int? alignment_penalty_insertion
    Int? alignment_penalty_deletion
    Int? turn_merge_penalty
    Int? alignment_penalty_gap
    Int? alignment_penalty_read
    Boolean? disable_phreadqv_refinealignment
    Int? minimum_bandwidth_pairwise
    Int? maximum_bandwidth_pairwise
    Int? maximum_bandwidth_graph
    Int? basic_bandwidth_graph
    Float? minimum_alignment_identity
    Int? number_iterations_consensus
    Boolean? verbose
  }
  command <<<
    wtmsa \
      ~{if defined(total_parallel_jobs) then ("-P " +  '"' + total_parallel_jobs + '"') else ""} \
      ~{if defined(index_current_cpu) then ("-p " +  '"' + index_current_cpu + '"') else ""} \
      ~{if defined(input_file_layout) then ("-i " +  '"' + input_file_layout + '"') else ""} \
      ~{if defined(output_file_sequences) then ("-o " +  '"' + output_file_sequences + '"') else ""} \
      ~{if defined(print_backbone_sequences) then ("-B " +  '"' + print_backbone_sequences + '"') else ""} \
      ~{if defined(print_dot_graph) then ("-G " +  '"' + print_dot_graph + '"') else ""} \
      ~{if (force_overwrite) then "-f" else ""} \
      ~{if (trun_homopolymer_compression) then "-H" else ""} \
      ~{if defined(zmer_window) then ("-y " +  '"' + zmer_window + '"') else ""} \
      ~{if defined(minimum_size_seeding) then ("-R " +  '"' + minimum_size_seeding + '"') else ""} \
      ~{if defined(maximum_variant_uncompressed) then ("-l " +  '"' + maximum_variant_uncompressed + '"') else ""} \
      ~{if defined(alignment_penalty_match) then ("-M " +  '"' + alignment_penalty_match + '"') else ""} \
      ~{if defined(alignment_penalty_mismatch) then ("-X " +  '"' + alignment_penalty_mismatch + '"') else ""} \
      ~{if defined(alignment_penalty_insertion) then ("-I " +  '"' + alignment_penalty_insertion + '"') else ""} \
      ~{if defined(alignment_penalty_deletion) then ("-D " +  '"' + alignment_penalty_deletion + '"') else ""} \
      ~{if defined(turn_merge_penalty) then ("-V " +  '"' + turn_merge_penalty + '"') else ""} \
      ~{if defined(alignment_penalty_gap) then ("-E " +  '"' + alignment_penalty_gap + '"') else ""} \
      ~{if defined(alignment_penalty_read) then ("-T " +  '"' + alignment_penalty_read + '"') else ""} \
      ~{if (disable_phreadqv_refinealignment) then "-F" else ""} \
      ~{if defined(minimum_bandwidth_pairwise) then ("-w " +  '"' + minimum_bandwidth_pairwise + '"') else ""} \
      ~{if defined(maximum_bandwidth_pairwise) then ("-W " +  '"' + maximum_bandwidth_pairwise + '"') else ""} \
      ~{if defined(maximum_bandwidth_graph) then ("-e " +  '"' + maximum_bandwidth_graph + '"') else ""} \
      ~{if defined(basic_bandwidth_graph) then ("-g " +  '"' + basic_bandwidth_graph + '"') else ""} \
      ~{if defined(minimum_alignment_identity) then ("-m " +  '"' + minimum_alignment_identity + '"') else ""} \
      ~{if defined(number_iterations_consensus) then ("-n " +  '"' + number_iterations_consensus + '"') else ""} \
      ~{if (verbose) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    total_parallel_jobs: "Total parallel jobs, [1]"
    index_current_cpu: "Index of current job (0-based), [0]\\nSuppose to run wtmsa for the same layout file parallelly in 60 cpu. For cpu1, -P 60 -p 0; cpu2, -P 60 -p 1, ..."
    input_file_layout: "Input file, layout from wtlay, +, *"
    output_file_sequences: "Output file, consensus sequences, *"
    print_backbone_sequences: "Print backbone sequences on file for debug [NULL]"
    print_dot_graph: "Print dot graph on file, H U G E, be careful, [NULL]"
    force_overwrite: "Force overwrite"
    trun_homopolymer_compression: "Trun off homopolymer compression"
    zmer_window: "Zmer window, [800]"
    minimum_size_seeding: "Minimum size of seeding region within zmer window, [200]"
    maximum_variant_uncompressed: "Maximum variant of uncompressed sizes between two matched zmer, [2]"
    alignment_penalty_match: "Alignment penalty: match, [2]"
    alignment_penalty_mismatch: "Alignment penalty: mismatch, [-5]"
    alignment_penalty_insertion: "Alignment penalty: insertion, [-2]"
    alignment_penalty_deletion: "Alignment penalty: deletion, [-3]"
    turn_merge_penalty: "turn on homopolymer merge penalty"
    alignment_penalty_gap: "Alignment penalty: gap extension, [-1]"
    alignment_penalty_read: "Alignment penalty: read end clipping [-10]"
    disable_phreadqv_refinealignment: "Disable PhreadQV in refine-alignment"
    minimum_bandwidth_pairwise: "Minimum bandwidth of pairwise alignment, iteratively doubled to maximum [50]"
    maximum_bandwidth_pairwise: "Maximum bandwidth of pairwise alignment, [3200]"
    maximum_bandwidth_graph: "Maximum bandwidth at graph alignment and ending extension, [800]"
    basic_bandwidth_graph: "Basic bandwidth in graph alignment, [100]"
    minimum_alignment_identity: "Minimum alignment identity, [0.5]"
    number_iterations_consensus: "Number of iterations for consensus calling, the more, the accurater, the slower [2]"
    verbose: "Verbose, +"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_sequences = "${in_output_file_sequences}"
  }
}