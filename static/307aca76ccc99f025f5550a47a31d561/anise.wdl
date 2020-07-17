version 1.0

task Anise {
  input {
    Boolean? quiet
    Boolean? verbose
    Boolean? very_verbose
    Int? num_threads
    Int? debug_site_id
    Int? debug_step_no
    Boolean? no_auto_tuning
    String? output_fast_a
    String? output_mapping
    String? output_debug_dir
    Boolean? clean_up_tmp_files
    Int? recursion_max_steps
    Boolean? no_realign_assembly
    Float? max_reads_factor
    Int? stop_initial_read_count
    Int? stop_tex_read_count
    Int? stop_read_count
    Int? stop_coverage
    Int? realignment_bandwidth
    Int? realignment_border
    Boolean? no_separate_repeats
    String? rep_sep_tammi_method
    Float? rep_sep_p_err
    Float? rep_sep_max_random_correlation
    Int? rep_sep_tau_min
    Int? rep_sep_r_min
    Int? rep_sep_min_overlap
    Int? rep_sep_start_compression_at
    Boolean? rep_sep_split_d_min
    String? fragment_size_factor
    String? auto_library_num_records
    Int? fragment_size_median
    String? fragment_size_std_dev
    String? fragment_default_orientation
    Int? assembly_site_window_radius
    Int? assembly_site_fringe_radius
    String? read_mapping_error_rate
    Int? read_mapping_batch_size
    String? overlap_per_min_overlap_ratio
    Int? overlap_per_max_error_rate
    Boolean? no_read_correction
    Int? msa_score_match
    Int? msa_score_mismatch
    Int? msa_score_gap_open
    Int? msa_score_gap_extend
    Int? consensus_min_base_support
    String? consensus_min_contig_length_rate
  }
  command <<<
    anise \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--very-verbose" false="" very_verbose} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(debug_site_id) then ("--debug-site-id " +  '"' + debug_site_id + '"') else ""} \
      ~{if defined(debug_step_no) then ("--debug-step-no " +  '"' + debug_step_no + '"') else ""} \
      ~{true="--no-auto-tuning" false="" no_auto_tuning} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(output_mapping) then ("--output-mapping " +  '"' + output_mapping + '"') else ""} \
      ~{if defined(output_debug_dir) then ("--output-debug-dir " +  '"' + output_debug_dir + '"') else ""} \
      ~{true="--clean-up-tmp-files" false="" clean_up_tmp_files} \
      ~{if defined(recursion_max_steps) then ("--recursion-max-steps " +  '"' + recursion_max_steps + '"') else ""} \
      ~{true="--no-realign-assembly" false="" no_realign_assembly} \
      ~{if defined(max_reads_factor) then ("--max-reads-factor " +  '"' + max_reads_factor + '"') else ""} \
      ~{if defined(stop_initial_read_count) then ("--stop-initial-read-count " +  '"' + stop_initial_read_count + '"') else ""} \
      ~{if defined(stop_tex_read_count) then ("--stop-tex-read-count " +  '"' + stop_tex_read_count + '"') else ""} \
      ~{if defined(stop_read_count) then ("--stop-read-count " +  '"' + stop_read_count + '"') else ""} \
      ~{if defined(stop_coverage) then ("--stop-coverage " +  '"' + stop_coverage + '"') else ""} \
      ~{if defined(realignment_bandwidth) then ("--realignment-bandwidth " +  '"' + realignment_bandwidth + '"') else ""} \
      ~{if defined(realignment_border) then ("--realignment-border " +  '"' + realignment_border + '"') else ""} \
      ~{true="--no-separate-repeats" false="" no_separate_repeats} \
      ~{if defined(rep_sep_tammi_method) then ("--repsep-tammi-method " +  '"' + rep_sep_tammi_method + '"') else ""} \
      ~{if defined(rep_sep_p_err) then ("--repsep-p-err " +  '"' + rep_sep_p_err + '"') else ""} \
      ~{if defined(rep_sep_max_random_correlation) then ("--repsep-max-random-correlation " +  '"' + rep_sep_max_random_correlation + '"') else ""} \
      ~{if defined(rep_sep_tau_min) then ("--repsep-tau-min " +  '"' + rep_sep_tau_min + '"') else ""} \
      ~{if defined(rep_sep_r_min) then ("--repsep-r-min " +  '"' + rep_sep_r_min + '"') else ""} \
      ~{if defined(rep_sep_min_overlap) then ("--repsep-min-overlap " +  '"' + rep_sep_min_overlap + '"') else ""} \
      ~{if defined(rep_sep_start_compression_at) then ("--repsep-start-compression-at " +  '"' + rep_sep_start_compression_at + '"') else ""} \
      ~{true="--repsep-split-d-min" false="" rep_sep_split_d_min} \
      ~{if defined(fragment_size_factor) then ("--fragment-size-factor " +  '"' + fragment_size_factor + '"') else ""} \
      ~{if defined(auto_library_num_records) then ("--auto-library-num-records " +  '"' + auto_library_num_records + '"') else ""} \
      ~{if defined(fragment_size_median) then ("--fragment-size-median " +  '"' + fragment_size_median + '"') else ""} \
      ~{if defined(fragment_size_std_dev) then ("--fragment-size-std-dev " +  '"' + fragment_size_std_dev + '"') else ""} \
      ~{if defined(fragment_default_orientation) then ("--fragment-default-orientation " +  '"' + fragment_default_orientation + '"') else ""} \
      ~{if defined(assembly_site_window_radius) then ("--assembly-site-window-radius " +  '"' + assembly_site_window_radius + '"') else ""} \
      ~{if defined(assembly_site_fringe_radius) then ("--assembly-site-fringe-radius " +  '"' + assembly_site_fringe_radius + '"') else ""} \
      ~{if defined(read_mapping_error_rate) then ("--read-mapping-error-rate " +  '"' + read_mapping_error_rate + '"') else ""} \
      ~{if defined(read_mapping_batch_size) then ("--read-mapping-batch-size " +  '"' + read_mapping_batch_size + '"') else ""} \
      ~{if defined(overlap_per_min_overlap_ratio) then ("--overlapper-min-overlap-ratio " +  '"' + overlap_per_min_overlap_ratio + '"') else ""} \
      ~{if defined(overlap_per_max_error_rate) then ("--overlapper-max-error-rate " +  '"' + overlap_per_max_error_rate + '"') else ""} \
      ~{true="--no-read-correction" false="" no_read_correction} \
      ~{if defined(msa_score_match) then ("--msa-score-match " +  '"' + msa_score_match + '"') else ""} \
      ~{if defined(msa_score_mismatch) then ("--msa-score-mismatch " +  '"' + msa_score_mismatch + '"') else ""} \
      ~{if defined(msa_score_gap_open) then ("--msa-score-gap-open " +  '"' + msa_score_gap_open + '"') else ""} \
      ~{if defined(msa_score_gap_extend) then ("--msa-score-gap-extend " +  '"' + msa_score_gap_extend + '"') else ""} \
      ~{if defined(consensus_min_base_support) then ("--consensus-min-base-support " +  '"' + consensus_min_base_support + '"') else ""} \
      ~{if defined(consensus_min_contig_length_rate) then ("--consensus-min-contig-length-rate " +  '"' + consensus_min_contig_length_rate + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Set verbosity to a minimum."
    verbose: "Enable verbose output."
    very_verbose: "Enable very verbose output."
    num_threads: "Number of threads to use. In range [1..inf]. Default: 1."
    debug_site_id: "Debug site ID (-1 to disable). In range [-1..inf]. Default: -1."
    debug_step_no: "Debug step no (-1 to disable). In range [-1..inf]. Default: -1."
    no_auto_tuning: "Disable auto-tuning (see below)."
    output_fast_a: "Output FASTA with contigs Valid filetypes are: fa and fasta."
    output_mapping: "Output SAM/BAM file with mapping fo reads to contigs in --output-fasta. Valid filetypes are: sam and bam."
    output_debug_dir: "Directory for debug output. Leave empty for no such output."
    clean_up_tmp_files: "Clean up temporary files."
    recursion_max_steps: "Maximal recursion depth. 0 for infinity. In range [0..inf]. Default: 50."
    no_realign_assembly: "Do not realign the reads after assembly."
    max_reads_factor: "Factor to use for the maximal read computation. ANISE stops for a site if more than the number of reads expected from the expected coverage times the max reads factor are assigned to the site. In range [1..inf]. Default: 2."
    stop_initial_read_count: "If there are more than this number of reads for a site in the initial round then no assembly is performed. In range [0..inf]. Default: 4000."
    stop_tex_read_count: "If there are more than this number of reads for a site in a later round then no triplet library extension is performed. In range [0..inf]. Default: 3000."
    stop_read_count: "If there are more than this number of reads for a site in a later round then no assembly is performed. In range [0..inf]. Default: 30000."
    stop_coverage: "If the length sum of all reads for a site divided by the length sum of its contigs is higher than this value before assembly then the site is deactivated. Set to 0 to deactivate check. In range [0..inf]. Default: 100."
    realignment_bandwidth: "The bandwidth to use in the realignment step. In range [0..inf]. Default: 40."
    realignment_border: "The border from the profile to extract around alignments. In range [0..inf]. Default: 30."
    no_separate_repeats: "Dont' repeat separation algorithm after realignment."
    rep_sep_tammi_method: "Variant of the Tammi method to use for repeat separation (simple or phred). One of phred and simple. Default: simple."
    rep_sep_p_err: "Repeat separation per-base error for simple Tammi method. In range [0.0..1.0]. Default: 0.01."
    rep_sep_max_random_correlation: "Repeat separation maximal random correlation. In range [0.0..1.0]. Default: 0.00001."
    rep_sep_tau_min: "Repeat separation tau_min value. In range [0..inf]. Default: 100000."
    rep_sep_r_min: "Repeat separation r_min value. In range [0..inf]. Default: 100000."
    rep_sep_min_overlap: "Repeat separation minimal overlap value. In range [0..inf]. Default: 2."
    rep_sep_start_compression_at: "Repeat separation start compression. In range [2..inf]. Default: 100."
    rep_sep_split_d_min: "Repeat separation split at d_min deviations."
    fragment_size_factor: "Factor to multiple fragment size stddev with to get allowed error. In range [0..inf]. Default: 8."
    auto_library_num_records: "Number of records to use for automatic library evaluation. Set to 0 to evaluate all. In range [0..inf]. Default: 100000."
    fragment_size_median: "Median fragment size. In range [0..inf]. Default: 250."
    fragment_size_std_dev: "Fragment size standard deviation. In range [0..inf]. Default: 30."
    fragment_default_orientation: "Default orientation. One of F+, F-, R+, and R-. Default: R+."
    assembly_site_window_radius: "Radius around insert site to cut for initial contigs. In range [100..inf]. Default: 1000."
    assembly_site_fringe_radius: "Radius around insert site to cut for collecting clippings. Set to -1 (default) to consider all records with >= 15 clipped bases. In range [-1..inf]. Default: -1."
    read_mapping_error_rate: "Error rate of internal read mapping step in percent. In range [0..20]. Default: 5."
    read_mapping_batch_size: "Batch size for read mapping. In range [1..inf]. Default: 10000."
    overlap_per_min_overlap_ratio: "Overlapper min overlap rate in percent of the longer read. In range [0..inf]. Default: 40."
    overlap_per_max_error_rate: "Overlapper maximum error rate in percent. In range [0..30]. Default: 5."
    no_read_correction: "Whether or not to perform read correction"
    msa_score_match: "PW match score in MSA. Default: 2."
    msa_score_mismatch: "PW mismatch score in MSA. Default: -6."
    msa_score_gap_open: "PW gap open score in MSA. Default: -4."
    msa_score_gap_extend: "PW gap extension score in MSA. Default: -9."
    consensus_min_base_support: "Minimal base support for non-N call in consensus calling. Default: 2."
    consensus_min_contig_length_rate: "Minimal contig length in percent of average read length. Default: 150."
  }
}