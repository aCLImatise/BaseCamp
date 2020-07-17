version 1.0

task BcbioVariation {
  input {
    String? analysis_type
    String? input_file
    String? read_buffer_size
    String? run_mode_stdout
    String? g_atk_key
    String? tag
    String? read_filter
    Int? intervals
    String? exclude_intervals
    Int? set_merging_approach
    Int? interval_merging
    Int? interval_padding
    String? reference_sequence
    Boolean? nondeterministic_random_seed
    Int? stop_execution_cleanly
    Int? max_runtime_units
    String? downsampling_type
    String? down_sample_to_fraction
    String? target_coverage_threshold
    String? baq
    String? baq_gap_open_penalty
    Boolean? refactor_ndn_cigar_string
    Boolean? fix_m_is_encoded_quality_scores
    Boolean? allow_potentially_m_is_encoded_quality_scores
    Boolean? use_original_qualities
    String? default_base_qualities
    String? performance_log
    String? b_qsr
    Boolean? disable_in_del_quals
    Boolean? emit_original_quals
    String? preserve_q_scores_less_than
    String? global_q_score_prior
    String? validation_strictness
    Boolean? remove_program_records
    Boolean? keep_program_records
    String? sample_rename_mapping_file
    String? unsafe
    String? num_threads
    String? num_cpu_threads_per_data_thread
    Boolean? monitor_thread_efficiency
    String? num_bam_file_handles
    String? read_group_black_list
    String? pedigree
    String? pedigree_string
    String? pedigree_validation_type
    String? variant_index_type
    String? variant_index_parameter
    String? logging_level
    String? log_to_file
    String? jar
    String java
    String? var_51
    Int? var_52
    Int? var_53
    String? var_54
  }
  command <<<
    bcbio-variation \
      ~{java} \
      ~{var_51} \
      ~{var_52} \
      ~{var_53} \
      ~{var_54} \
      ~{if defined(analysis_type) then ("--analysis_type " +  '"' + analysis_type + '"') else ""} \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(read_buffer_size) then ("--read_buffer_size " +  '"' + read_buffer_size + '"') else ""} \
      ~{if defined(run_mode_stdout) then ("--phone_home " +  '"' + run_mode_stdout + '"') else ""} \
      ~{if defined(g_atk_key) then ("--gatk_key " +  '"' + g_atk_key + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(read_filter) then ("--read_filter " +  '"' + read_filter + '"') else ""} \
      ~{if defined(intervals) then ("--intervals " +  '"' + intervals + '"') else ""} \
      ~{if defined(exclude_intervals) then ("--excludeIntervals " +  '"' + exclude_intervals + '"') else ""} \
      ~{if defined(set_merging_approach) then ("--interval_set_rule " +  '"' + set_merging_approach + '"') else ""} \
      ~{if defined(interval_merging) then ("--interval_merging " +  '"' + interval_merging + '"') else ""} \
      ~{if defined(interval_padding) then ("--interval_padding " +  '"' + interval_padding + '"') else ""} \
      ~{if defined(reference_sequence) then ("--reference_sequence " +  '"' + reference_sequence + '"') else ""} \
      ~{true="--nonDeterministicRandomSeed" false="" nondeterministic_random_seed} \
      ~{if defined(stop_execution_cleanly) then ("--maxRuntime " +  '"' + stop_execution_cleanly + '"') else ""} \
      ~{if defined(max_runtime_units) then ("--maxRuntimeUnits " +  '"' + max_runtime_units + '"') else ""} \
      ~{if defined(downsampling_type) then ("--downsampling_type " +  '"' + downsampling_type + '"') else ""} \
      ~{if defined(down_sample_to_fraction) then ("--downsample_to_fraction " +  '"' + down_sample_to_fraction + '"') else ""} \
      ~{if defined(target_coverage_threshold) then ("--downsample_to_coverage " +  '"' + target_coverage_threshold + '"') else ""} \
      ~{if defined(baq) then ("--baq " +  '"' + baq + '"') else ""} \
      ~{if defined(baq_gap_open_penalty) then ("--baqGapOpenPenalty " +  '"' + baq_gap_open_penalty + '"') else ""} \
      ~{true="--refactor_NDN_cigar_string" false="" refactor_ndn_cigar_string} \
      ~{true="--fix_misencoded_quality_scores" false="" fix_m_is_encoded_quality_scores} \
      ~{true="--allow_potentially_misencoded_quality_scores" false="" allow_potentially_m_is_encoded_quality_scores} \
      ~{true="--useOriginalQualities" false="" use_original_qualities} \
      ~{if defined(default_base_qualities) then ("--defaultBaseQualities " +  '"' + default_base_qualities + '"') else ""} \
      ~{if defined(performance_log) then ("--performanceLog " +  '"' + performance_log + '"') else ""} \
      ~{if defined(b_qsr) then ("--BQSR " +  '"' + b_qsr + '"') else ""} \
      ~{true="--disable_indel_quals" false="" disable_in_del_quals} \
      ~{true="--emit_original_quals" false="" emit_original_quals} \
      ~{if defined(preserve_q_scores_less_than) then ("--preserve_qscores_less_than " +  '"' + preserve_q_scores_less_than + '"') else ""} \
      ~{if defined(global_q_score_prior) then ("--globalQScorePrior " +  '"' + global_q_score_prior + '"') else ""} \
      ~{if defined(validation_strictness) then ("--validation_strictness " +  '"' + validation_strictness + '"') else ""} \
      ~{true="--remove_program_records" false="" remove_program_records} \
      ~{true="--keep_program_records" false="" keep_program_records} \
      ~{if defined(sample_rename_mapping_file) then ("--sample_rename_mapping_file " +  '"' + sample_rename_mapping_file + '"') else ""} \
      ~{if defined(unsafe) then ("--unsafe " +  '"' + unsafe + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(num_cpu_threads_per_data_thread) then ("--num_cpu_threads_per_data_thread " +  '"' + num_cpu_threads_per_data_thread + '"') else ""} \
      ~{true="--monitorThreadEfficiency" false="" monitor_thread_efficiency} \
      ~{if defined(num_bam_file_handles) then ("--num_bam_file_handles " +  '"' + num_bam_file_handles + '"') else ""} \
      ~{if defined(read_group_black_list) then ("--read_group_black_list " +  '"' + read_group_black_list + '"') else ""} \
      ~{if defined(pedigree) then ("--pedigree " +  '"' + pedigree + '"') else ""} \
      ~{if defined(pedigree_string) then ("--pedigreeString " +  '"' + pedigree_string + '"') else ""} \
      ~{if defined(pedigree_validation_type) then ("--pedigreeValidationType " +  '"' + pedigree_validation_type + '"') else ""} \
      ~{if defined(variant_index_type) then ("--variant_index_type " +  '"' + variant_index_type + '"') else ""} \
      ~{if defined(variant_index_parameter) then ("--variant_index_parameter " +  '"' + variant_index_parameter + '"') else ""} \
      ~{if defined(logging_level) then ("--logging_level " +  '"' + logging_level + '"') else ""} \
      ~{if defined(log_to_file) then ("--log_to_file " +  '"' + log_to_file + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    analysis_type: "Name of the tool to run"
    input_file: "Input file containing sequence  data (SAM or BAM)"
    read_buffer_size: "Number of reads per SAM file to  buffer in memory"
    run_mode_stdout: "Run reporting mode (NO_ET|AWS| STDOUT)"
    g_atk_key: "GATK key file required to run  with -et NO_ET"
    tag: "Tag to identify this GATK run  as part of a group of runs"
    read_filter: "Filters to apply to reads  before analysis"
    intervals: "One or more genomic intervals  over which to operate"
    exclude_intervals: "One or more genomic intervals  to exclude from processing"
    set_merging_approach: "Set merging approach to use for  combining interval inputs  (UNION|INTERSECTION)"
    interval_merging: "Interval merging rule for  abutting intervals (ALL| OVERLAPPING_ONLY)"
    interval_padding: "Amount of padding (in bp) to  add to each interval"
    reference_sequence: "Reference sequence file"
    nondeterministic_random_seed: "Use a non-deterministic random  seed"
    stop_execution_cleanly: "Stop execution cleanly as soon  as maxRuntime has been reached"
    max_runtime_units: "Unit of time used by maxRuntime  (NANOSECONDS|MICROSECONDS| MILLISECONDS|SECONDS|MINUTES| HOURS|DAYS)"
    downsampling_type: "Type of read downsampling to  employ at a given locus (NONE| ALL_READS|BY_SAMPLE)"
    down_sample_to_fraction: "Fraction of reads to downsample  to"
    target_coverage_threshold: "Target coverage threshold for  downsampling to coverage"
    baq: "Type of BAQ calculation to  apply in the engine (OFF| CALCULATE_AS_NECESSARY| RECALCULATE)"
    baq_gap_open_penalty: "BAQ gap open penalty"
    refactor_ndn_cigar_string: "refactor cigar string with NDN  elements to one element"
    fix_m_is_encoded_quality_scores: "Fix mis-encoded base quality  scores"
    allow_potentially_m_is_encoded_quality_scores: "Ignore warnings about base  quality score encoding"
    use_original_qualities: "Use the base quality scores  from the OQ tag"
    default_base_qualities: "Assign a default base quality"
    performance_log: "Write GATK runtime performance  log to this file"
    b_qsr: "Input covariates table file for  on-the-fly base quality score  recalibration"
    disable_in_del_quals: "Disable printing of base  insertion and deletion tags  (with -BQSR)"
    emit_original_quals: "Emit the OQ tag with the  original base qualities (with  -BQSR)"
    preserve_q_scores_less_than: "Don't recalibrate bases with  quality scores less than this  threshold (with -BQSR)"
    global_q_score_prior: "Global Qscore Bayesian prior to  use for BQSR"
    validation_strictness: "How strict should we be with  validation (STRICT|LENIENT| SILENT)"
    remove_program_records: "Remove program records from the  SAM header"
    keep_program_records: "Keep program records in the SAM  header"
    sample_rename_mapping_file: "Rename sample IDs on-the-fly at  runtime using the provided  mapping file"
    unsafe: "Enable unsafe operations:  nothing will be checked at  runtime (ALLOW_N_CIGAR_READS| ALLOW_UNINDEXED_BAM| ALLOW_UNSET_BAM_SORT_ORDER| NO_READ_ORDER_VERIFICATION| ALLOW_SEQ_DICT_INCOMPATIBILITY| LENIENT_VCF_PROCESSING|ALL)"
    num_threads: "Number of data threads to  allocate to this analysis"
    num_cpu_threads_per_data_thread: "Number of CPU threads to  allocate per data thread"
    monitor_thread_efficiency: "Enable threading efficiency  monitoring"
    num_bam_file_handles: "Total number of BAM file  handles to keep open  simultaneously"
    read_group_black_list: "Exclude read groups based on  tags"
    pedigree: "Pedigree files for samples"
    pedigree_string: "Pedigree string for samples"
    pedigree_validation_type: "Validation strictness for  pedigree information (STRICT| SILENT)"
    variant_index_type: "Type of IndexCreator to use for  VCF/BCF indices (DYNAMIC_SEEK| DYNAMIC_SIZE|LINEAR|INTERVAL)"
    variant_index_parameter: "Parameter to pass to the  VCF/BCF IndexCreator"
    logging_level: "Set the minimum level of  logging"
    log_to_file: "Set the logging location"
    jar: ""
    java: ""
    var_51: ""
    var_52: ""
    var_53: ""
    var_54: ""
  }
}