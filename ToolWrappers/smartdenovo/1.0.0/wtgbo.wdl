version 1.0

task Wtgbo {
  input {
    Int? number_of_threads
    File? long_reads_files
    String? long_reads_region
    File? overlap_files_readsttlentbegtendtreadsttlentbegtendtscore
    File? load_pairs_read
    Int? minimum_alignment_score
    Float? minimum_alignment_identity
    Int? maximum_margin_alignment
    File? output_file_new
    Int? record_pairs_sequences
    File? force_overwrite_output
    Int? minimum_estimated_coverage
    Boolean? use_number_matches
    Float? best_score_cutoff
    Boolean? turn_homopolymer_compression
    Int? filter_high_frequency
    Int? zmer_window
    Int? minimum_size_seeding
    Int? minimum_size_total
    Int? maximum_variant_uncompressed
    Int? alignment_penalty_match
    Int? alignment_penalty_mismatch
    Int? alignment_penalty_insertion
    Int? alignment_penalty_gap
    Int? alignment_penalty_read
    Int? minimum_bandwidth_iteratively
    Int? maximum_bandwidth
    Boolean? refine_the_alignment
    Int? max_turns_iteration
  }
  command <<<
    wtgbo \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(long_reads_files) then ("-i " +  '"' + long_reads_files + '"') else ""} \
      ~{if defined(long_reads_region) then ("-b " +  '"' + long_reads_region + '"') else ""} \
      ~{if defined(overlap_files_readsttlentbegtendtreadsttlentbegtendtscore) then ("-j " +  '"' + overlap_files_readsttlentbegtendtreadsttlentbegtendtscore + '"') else ""} \
      ~{if defined(load_pairs_read) then ("-L " +  '"' + load_pairs_read + '"') else ""} \
      ~{if defined(minimum_alignment_score) then ("-s " +  '"' + minimum_alignment_score + '"') else ""} \
      ~{if defined(minimum_alignment_identity) then ("-m " +  '"' + minimum_alignment_identity + '"') else ""} \
      ~{if defined(maximum_margin_alignment) then ("-u " +  '"' + maximum_margin_alignment + '"') else ""} \
      ~{if defined(output_file_new) then ("-o " +  '"' + output_file_new + '"') else ""} \
      ~{if defined(record_pairs_sequences) then ("-9 " +  '"' + record_pairs_sequences + '"') else ""} \
      ~{if (force_overwrite_output) then "-f" else ""} \
      ~{if defined(minimum_estimated_coverage) then ("-c " +  '"' + minimum_estimated_coverage + '"') else ""} \
      ~{if (use_number_matches) then "-Q" else ""} \
      ~{if defined(best_score_cutoff) then ("-q " +  '"' + best_score_cutoff + '"') else ""} \
      ~{if (turn_homopolymer_compression) then "-H" else ""} \
      ~{if defined(filter_high_frequency) then ("-Z " +  '"' + filter_high_frequency + '"') else ""} \
      ~{if defined(zmer_window) then ("-y " +  '"' + zmer_window + '"') else ""} \
      ~{if defined(minimum_size_seeding) then ("-R " +  '"' + minimum_size_seeding + '"') else ""} \
      ~{if defined(minimum_size_total) then ("-r " +  '"' + minimum_size_total + '"') else ""} \
      ~{if defined(maximum_variant_uncompressed) then ("-l " +  '"' + maximum_variant_uncompressed + '"') else ""} \
      ~{if defined(alignment_penalty_match) then ("-M " +  '"' + alignment_penalty_match + '"') else ""} \
      ~{if defined(alignment_penalty_mismatch) then ("-X " +  '"' + alignment_penalty_mismatch + '"') else ""} \
      ~{if defined(alignment_penalty_insertion) then ("-O " +  '"' + alignment_penalty_insertion + '"') else ""} \
      ~{if defined(alignment_penalty_gap) then ("-E " +  '"' + alignment_penalty_gap + '"') else ""} \
      ~{if defined(alignment_penalty_read) then ("-T " +  '"' + alignment_penalty_read + '"') else ""} \
      ~{if defined(minimum_bandwidth_iteratively) then ("-w " +  '"' + minimum_bandwidth_iteratively + '"') else ""} \
      ~{if defined(maximum_bandwidth) then ("-W " +  '"' + maximum_bandwidth + '"') else ""} \
      ~{if (refine_the_alignment) then "-n" else ""} \
      ~{if defined(max_turns_iteration) then ("-N " +  '"' + max_turns_iteration + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_of_threads: "Number of threads, [1]"
    long_reads_files: "Long reads sequences file(s), + *"
    long_reads_region: "Long reads retained region, often from wtobt, +\\nFormat: read_name\\toffset\\tlength\\toriginal_len"
    overlap_files_readsttlentbegtendtreadsttlentbegtendtscore: "Overlap file(s), + *\\nFormat: reads1\\t+/-\\tlen1\\tbeg1\\tend1\\treads2\\t+/-\\tlen2\\tbeg2\\tend2\\tscore"
    load_pairs_read: "Load pairs of read name from file, will avoid to calculate overlap them again, + [NULL]"
    minimum_alignment_score: "Minimum alignment score, [200]"
    minimum_alignment_identity: "Minimum alignment identity, [0.6]"
    maximum_margin_alignment: "Maximum margin of alignment, [100]"
    output_file_new: "Output file of new overlaps, *"
    record_pairs_sequences: "Record pairs of sequences have beed aligned regardless of successful, including pairs from '-L'\\nFormat: read1\\tread2"
    force_overwrite_output: "Force overwrite output file"
    minimum_estimated_coverage: "Minimum estimated coverage of edge to be trusted, [1]\\nedge coverage is calculated by counting overlaps that can replace this edge"
    use_number_matches: "Use number of matches as alignment score"
    best_score_cutoff: "Best score cutoff, say best overlap MUST have alignment score >= <-r> * read's best score [0.95]"
    turn_homopolymer_compression: "Turn off homopolymer compression"
    filter_high_frequency: "Filter high frequency z-mers, maybe repetitive, [100]"
    zmer_window: "Zmer window, [800]"
    minimum_size_seeding: "Minimum size of seeding region within zmer window, [200]"
    minimum_size_total: "Minimum size of total seeding region for zmer windows, [300]"
    maximum_variant_uncompressed: "Maximum variant of uncompressed sizes between two matched hz-kmer, [2]"
    alignment_penalty_match: "Alignment penalty: match, [2]"
    alignment_penalty_mismatch: "Alignment penalty: mismatch, [-5]"
    alignment_penalty_insertion: "Alignment penalty: insertion or deletion, [-3]"
    alignment_penalty_gap: "Alignment penalty: gap extension, [-1]"
    alignment_penalty_read: "Alignment penalty: read end clipping, 0: distable HSP extension, otherwise set to -50 or other [-50]"
    minimum_bandwidth_iteratively: "Minimum bandwidth, iteratively doubled to maximum [50]"
    maximum_bandwidth: "Maximum bandwidth, [3200]"
    refine_the_alignment: "Refine the alignment"
    max_turns_iteration: "Max turns of iteration, [5]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_new = "${in_output_file_new}"
    File out_force_overwrite_output = "${in_force_overwrite_output}"
  }
}