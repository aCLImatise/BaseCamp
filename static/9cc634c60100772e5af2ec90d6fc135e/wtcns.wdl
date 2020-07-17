version 1.0

task Wtcns {
  input {
    Int? number_of_threads
    Int? total_parallel_jobs
    Int? index_current_based
    String? input_file_layout
    String? output_file_consensus
    Boolean? force_overwrite
    Boolean? trun_homopolymer_compression
    Int? zmer_size_z
    Int? zmer_window
    Int? minimum_size_seeding
    Int? maximum_variant_uncompressed
    Int? alignment_penalty_match
    Int? alignment_penalty_mismatch
    Int? alignment_penalty_insertion_deletion
    Int? alignment_penalty_insertion_used
    Int? alignment_penalty_deletion
    Int? alignment_penalty_gap
    Int? alignment_penalty_read
    Boolean? disable_phreadqv_refinealignment
    Int? minimum_bandwidth_iteratively
    Int? maximum_bandwidth
    Int? maximum_bandwidth_ending
    Int? basic_bandwidth_refinealignment
    Float? minimum_alignment_identity
    Float? penalty_backbone_edge
    Float? penalty_alternative_edge
    Int? number_iterations_consensus
    String? align_reads_final
    Boolean? disable_fast_zmer
    Float? ouput_call_variants
    Boolean? be_careful_output
  }
  command <<<
    wtcns \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(total_parallel_jobs) then ("-P " +  '"' + total_parallel_jobs + '"') else ""} \
      ~{if defined(index_current_based) then ("-p " +  '"' + index_current_based + '"') else ""} \
      ~{if defined(input_file_layout) then ("-i " +  '"' + input_file_layout + '"') else ""} \
      ~{if defined(output_file_consensus) then ("-o " +  '"' + output_file_consensus + '"') else ""} \
      ~{true="-f" false="" force_overwrite} \
      ~{true="-H" false="" trun_homopolymer_compression} \
      ~{if defined(zmer_size_z) then ("-z " +  '"' + zmer_size_z + '"') else ""} \
      ~{if defined(zmer_window) then ("-y " +  '"' + zmer_window + '"') else ""} \
      ~{if defined(minimum_size_seeding) then ("-R " +  '"' + minimum_size_seeding + '"') else ""} \
      ~{if defined(maximum_variant_uncompressed) then ("-l " +  '"' + maximum_variant_uncompressed + '"') else ""} \
      ~{if defined(alignment_penalty_match) then ("-M " +  '"' + alignment_penalty_match + '"') else ""} \
      ~{if defined(alignment_penalty_mismatch) then ("-X " +  '"' + alignment_penalty_mismatch + '"') else ""} \
      ~{if defined(alignment_penalty_insertion_deletion) then ("-O " +  '"' + alignment_penalty_insertion_deletion + '"') else ""} \
      ~{if defined(alignment_penalty_insertion_used) then ("-I " +  '"' + alignment_penalty_insertion_used + '"') else ""} \
      ~{if defined(alignment_penalty_deletion) then ("-D " +  '"' + alignment_penalty_deletion + '"') else ""} \
      ~{if defined(alignment_penalty_gap) then ("-E " +  '"' + alignment_penalty_gap + '"') else ""} \
      ~{if defined(alignment_penalty_read) then ("-T " +  '"' + alignment_penalty_read + '"') else ""} \
      ~{true="-F" false="" disable_phreadqv_refinealignment} \
      ~{if defined(minimum_bandwidth_iteratively) then ("-w " +  '"' + minimum_bandwidth_iteratively + '"') else ""} \
      ~{if defined(maximum_bandwidth) then ("-W " +  '"' + maximum_bandwidth + '"') else ""} \
      ~{if defined(maximum_bandwidth_ending) then ("-e " +  '"' + maximum_bandwidth_ending + '"') else ""} \
      ~{if defined(basic_bandwidth_refinealignment) then ("-r " +  '"' + basic_bandwidth_refinealignment + '"') else ""} \
      ~{if defined(minimum_alignment_identity) then ("-m " +  '"' + minimum_alignment_identity + '"') else ""} \
      ~{if defined(penalty_backbone_edge) then ("-Y " +  '"' + penalty_backbone_edge + '"') else ""} \
      ~{if defined(penalty_alternative_edge) then ("-N " +  '"' + penalty_alternative_edge + '"') else ""} \
      ~{if defined(number_iterations_consensus) then ("-n " +  '"' + number_iterations_consensus + '"') else ""} \
      ~{if defined(align_reads_final) then ("-a " +  '"' + align_reads_final + '"') else ""} \
      ~{true="-A" false="" disable_fast_zmer} \
      ~{if defined(ouput_call_variants) then ("-V " +  '"' + ouput_call_variants + '"') else ""} \
      ~{true="-v" false="" be_careful_output}
  >>>
  parameter_meta {
    number_of_threads: "Number of threads, [16]"
    total_parallel_jobs: "Total parallel jobs, [1]"
    index_current_based: "Index of current job (0-based), [0] Suppose to run wtcns for the same layout file parallelly in 60 cpu. For cpu1, -P 60 -p 0; cpu2, -P 60 -p 1, ..."
    input_file_layout: "Input file, layout from wtlay, +"
    output_file_consensus: "Output file, consensus sequences, [STDOUT]"
    force_overwrite: "Force overwrite"
    trun_homopolymer_compression: "Trun on homopolymer compression"
    zmer_size_z: "Zmer size, 5 <= <-z> <= 16, [10]"
    zmer_window: "Zmer window, [800]"
    minimum_size_seeding: "Minimum size of seeding region within zmer window, [200]"
    maximum_variant_uncompressed: "Maximum variant of uncompressed sizes between two matched zmer, [2]"
    alignment_penalty_match: "Alignment penalty: match, [2]"
    alignment_penalty_mismatch: "Alignment penalty: mismatch, [-5]"
    alignment_penalty_insertion_deletion: "Alignment penalty: insertion or deletion, used in first round [-3]"
    alignment_penalty_insertion_used: "Alignment penalty: insertion, used in rounds after first, [-2]"
    alignment_penalty_deletion: "Alignment penalty: deletion, used in rounds after first, [-3]"
    alignment_penalty_gap: "Alignment penalty: gap extension, [-1]"
    alignment_penalty_read: "Alignment penalty: read end clipping [-10]"
    disable_phreadqv_refinealignment: "Disable PhreadQV in refine-alignment"
    minimum_bandwidth_iteratively: "Minimum bandwidth, iteratively doubled to maximum [50]"
    maximum_bandwidth: "Maximum bandwidth, [3200]"
    maximum_bandwidth_ending: "Maximum bandwidth at ending extension, [800]"
    basic_bandwidth_refinealignment: "Basic bandwidth in refine-alignment, [8]"
    minimum_alignment_identity: "Minimum alignment identity, [0.5]"
    penalty_backbone_edge: "Penalty of backbone edge in calling consensus, [0.5]"
    penalty_alternative_edge: "Penalty of alternative edge in calling consensus, [0.2] The above two options control whether the consensus look like backbone or alternative Default 0.5 and 0.2, will let the consensus don't look like backbone"
    number_iterations_consensus: "Number of iterations for consensus calling, the larger, the accurater, the slower [6]"
    align_reads_final: "Align reads against final consensus, and output to <-a>"
    disable_fast_zmer: "Disable fast zmer align in final aligning (see -a), use standard smith-waterman More than once -A, will disable fast zmer align in all process"
    ouput_call_variants: "Ouput call variants and print to <-a>, -V 2.05 mean: min_allele_count>=2,min_allele_freq>=0.05"
    be_careful_output: "Verbose, BE careful, HUGEEEEEEEE output on STDOUT"
  }
}