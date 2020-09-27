version 1.0

task Bissnp {
  input {
    String? analysis_type
    File? input_file
    Boolean? show_full_bam_list
    Int? read_buffer_size
    String? read_filter
    String? disable_read_filter
    String? intervals
    String? exclude_intervals
    String? interval_set_rule
    String? interval_merging
    String? interval_padding
    File? reference_sequence
    Boolean? nondeterministic_random_seed
    Int? max_runtime_units
    String? downsampling_type
    String? down_sample_to_fraction
    String? down_sample_to_coverage
    String? baq
    String? baq_gap_open_penalty
    Boolean? refactor_ndn_cigar_string
    Boolean? use_original_qualities
    String? default_base_qualities
    File? performance_log
    File? b_qsr
    Int? quantize_quals
    Int? static_quantized_quals
    Boolean? disable_in_del_quals
    Boolean? emit_original_quals
    String? preserve_q_scores_less_than
    String? global_q_score_prior
    Boolean? seconds_between_progress_updates
    String? validation_strictness
    Boolean? remove_program_records
    Boolean? keep_program_records
    File? sample_rename_mapping_file
    String? unsafe
    Boolean? use_jdk_def_later
    Boolean? use_jdk_inf_later
    Boolean? sites_only
    Boolean? never_trim_vcf_format_field
    Int? bam_compression
    Boolean? simplify_bam
    Int? num_threads
    Int? num_cpu_threads_per_data_thread
    Boolean? monitor_thread_efficiency
    String? pedigree_string
    String? pedigree_validation_type
    String? variant_index_type
    String? variant_index_parameter
    String? reference_window_stop
    String? logging_level
    Int? max_runtime
    Int? jar
    String seed
    String fixmisencodedqualsfixmisencodedqualityscores_fix_misencoded
    String scores
    String locking
    String _disablebamindexing_turn
    String files
    String monitoring
    String pedpedigree_pedigree_files
    String logging
  }
  command <<<
    bis_snp \
      ~{seed} \
      ~{fixmisencodedqualsfixmisencodedqualityscores_fix_misencoded} \
      ~{scores} \
      ~{locking} \
      ~{_disablebamindexing_turn} \
      ~{files} \
      ~{monitoring} \
      ~{pedpedigree_pedigree_files} \
      ~{logging} \
      ~{if defined(analysis_type) then ("--analysis_type " +  '"' + analysis_type + '"') else ""} \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if (show_full_bam_list) then "--showFullBamList" else ""} \
      ~{if defined(read_buffer_size) then ("--read_buffer_size " +  '"' + read_buffer_size + '"') else ""} \
      ~{if defined(read_filter) then ("--read_filter " +  '"' + read_filter + '"') else ""} \
      ~{if defined(disable_read_filter) then ("--disable_read_filter " +  '"' + disable_read_filter + '"') else ""} \
      ~{if defined(intervals) then ("--intervals " +  '"' + intervals + '"') else ""} \
      ~{if defined(exclude_intervals) then ("--excludeIntervals " +  '"' + exclude_intervals + '"') else ""} \
      ~{if defined(interval_set_rule) then ("--interval_set_rule " +  '"' + interval_set_rule + '"') else ""} \
      ~{if defined(interval_merging) then ("--interval_merging " +  '"' + interval_merging + '"') else ""} \
      ~{if defined(interval_padding) then ("--interval_padding " +  '"' + interval_padding + '"') else ""} \
      ~{if defined(reference_sequence) then ("--reference_sequence " +  '"' + reference_sequence + '"') else ""} \
      ~{if (nondeterministic_random_seed) then "--nonDeterministicRandomSeed" else ""} \
      ~{if defined(max_runtime_units) then ("--maxRuntimeUnits " +  '"' + max_runtime_units + '"') else ""} \
      ~{if defined(downsampling_type) then ("--downsampling_type " +  '"' + downsampling_type + '"') else ""} \
      ~{if defined(down_sample_to_fraction) then ("--downsample_to_fraction " +  '"' + down_sample_to_fraction + '"') else ""} \
      ~{if defined(down_sample_to_coverage) then ("--downsample_to_coverage " +  '"' + down_sample_to_coverage + '"') else ""} \
      ~{if defined(baq) then ("--baq " +  '"' + baq + '"') else ""} \
      ~{if defined(baq_gap_open_penalty) then ("--baqGapOpenPenalty " +  '"' + baq_gap_open_penalty + '"') else ""} \
      ~{if (refactor_ndn_cigar_string) then "--refactor_NDN_cigar_string" else ""} \
      ~{if (use_original_qualities) then "--useOriginalQualities" else ""} \
      ~{if defined(default_base_qualities) then ("--defaultBaseQualities " +  '"' + default_base_qualities + '"') else ""} \
      ~{if defined(performance_log) then ("--performanceLog " +  '"' + performance_log + '"') else ""} \
      ~{if defined(b_qsr) then ("--BQSR " +  '"' + b_qsr + '"') else ""} \
      ~{if defined(quantize_quals) then ("--quantize_quals " +  '"' + quantize_quals + '"') else ""} \
      ~{if defined(static_quantized_quals) then ("--static_quantized_quals " +  '"' + static_quantized_quals + '"') else ""} \
      ~{if (disable_in_del_quals) then "--disable_indel_quals" else ""} \
      ~{if (emit_original_quals) then "--emit_original_quals" else ""} \
      ~{if defined(preserve_q_scores_less_than) then ("--preserve_qscores_less_than " +  '"' + preserve_q_scores_less_than + '"') else ""} \
      ~{if defined(global_q_score_prior) then ("--globalQScorePrior " +  '"' + global_q_score_prior + '"') else ""} \
      ~{if (seconds_between_progress_updates) then "--secondsBetweenProgressUpdates" else ""} \
      ~{if defined(validation_strictness) then ("--validation_strictness " +  '"' + validation_strictness + '"') else ""} \
      ~{if (remove_program_records) then "--remove_program_records" else ""} \
      ~{if (keep_program_records) then "--keep_program_records" else ""} \
      ~{if defined(sample_rename_mapping_file) then ("--sample_rename_mapping_file " +  '"' + sample_rename_mapping_file + '"') else ""} \
      ~{if defined(unsafe) then ("--unsafe " +  '"' + unsafe + '"') else ""} \
      ~{if (use_jdk_def_later) then "--use_jdk_deflater" else ""} \
      ~{if (use_jdk_inf_later) then "--use_jdk_inflater" else ""} \
      ~{if (sites_only) then "--sites_only" else ""} \
      ~{if (never_trim_vcf_format_field) then "--never_trim_vcf_format_field" else ""} \
      ~{if defined(bam_compression) then ("--bam_compression " +  '"' + bam_compression + '"') else ""} \
      ~{if (simplify_bam) then "--simplifyBAM" else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(num_cpu_threads_per_data_thread) then ("--num_cpu_threads_per_data_thread " +  '"' + num_cpu_threads_per_data_thread + '"') else ""} \
      ~{if (monitor_thread_efficiency) then "--monitorThreadEfficiency" else ""} \
      ~{if defined(pedigree_string) then ("--pedigreeString " +  '"' + pedigree_string + '"') else ""} \
      ~{if defined(pedigree_validation_type) then ("--pedigreeValidationType " +  '"' + pedigree_validation_type + '"') else ""} \
      ~{if defined(variant_index_type) then ("--variant_index_type " +  '"' + variant_index_type + '"') else ""} \
      ~{if defined(variant_index_parameter) then ("--variant_index_parameter " +  '"' + variant_index_parameter + '"') else ""} \
      ~{if defined(reference_window_stop) then ("--reference_window_stop " +  '"' + reference_window_stop + '"') else ""} \
      ~{if defined(logging_level) then ("--logging_level " +  '"' + logging_level + '"') else ""} \
      ~{if defined(max_runtime) then ("-maxRuntime " +  '"' + max_runtime + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    analysis_type: "Type of analysis to run"
    input_file: "Input file containing sequence\\ndata (BAM or CRAM)"
    show_full_bam_list: "Emit list of input BAM/CRAM\\nfiles to log"
    read_buffer_size: "Number of reads per SAM file\\nto buffer in memory"
    read_filter: "Filters to apply to reads\\nbefore analysis"
    disable_read_filter: "Read filters to disable"
    intervals: "One or more genomic intervals\\nover which to operate"
    exclude_intervals: "One or more genomic intervals\\nto exclude from processing"
    interval_set_rule: "Set merging approach to use\\nfor combining interval inputs\\n(UNION|INTERSECTION)"
    interval_merging: "Interval merging rule for\\nabutting intervals (ALL|\\nOVERLAPPING_ONLY)"
    interval_padding: "Amount of padding (in bp) to\\nadd to each interval"
    reference_sequence: "Reference sequence file"
    nondeterministic_random_seed: "Use a non-deterministic random"
    max_runtime_units: "Unit of time used by\\nmaxRuntime (NANOSECONDS|\\nMICROSECONDS|MILLISECONDS|\\nSECONDS|MINUTES|HOURS|DAYS)"
    downsampling_type: "Type of read downsampling to\\nemploy at a given locus (NONE|\\nALL_READS|BY_SAMPLE)"
    down_sample_to_fraction: "Fraction of reads to\\ndownsample to"
    down_sample_to_coverage: "Target coverage threshold for\\ndownsampling to coverage"
    baq: "Type of BAQ calculation to\\napply in the engine (OFF|\\nCALCULATE_AS_NECESSARY|\\nRECALCULATE)"
    baq_gap_open_penalty: "BAQ gap open penalty"
    refactor_ndn_cigar_string: "Reduce NDN elements in CIGAR"
    use_original_qualities: "Use the base quality scores\\nfrom the OQ tag"
    default_base_qualities: "Assign a default base quality"
    performance_log: "Write GATK runtime performance\\nlog to this file"
    b_qsr: "Input covariates table file\\nfor on-the-fly base quality\\nscore recalibration"
    quantize_quals: "Quantize quality scores to a\\ngiven number of levels (with\\n-BQSR)"
    static_quantized_quals: "Use static quantized quality\\nscores to a given number of\\nlevels (with -BQSR)"
    disable_in_del_quals: "Disable printing of base\\ninsertion and deletion tags\\n(with -BQSR)"
    emit_original_quals: "Emit the OQ tag with the\\noriginal base qualities (with\\n-BQSR)"
    preserve_q_scores_less_than: "Don't recalibrate bases with\\nquality scores less than this\\nthreshold (with -BQSR)"
    global_q_score_prior: "Global Qscore Bayesian prior\\nto use for BQSR"
    seconds_between_progress_updates: "Time interval for process"
    validation_strictness: "How strict should we be with\\nvalidation (STRICT|LENIENT|\\nSILENT)"
    remove_program_records: "Remove program records from\\nthe SAM header"
    keep_program_records: "Keep program records in the\\nSAM header"
    sample_rename_mapping_file: "Rename sample IDs on-the-fly\\nat runtime using the provided\\nmapping file"
    unsafe: "Enable unsafe operations:\\nnothing will be checked at\\nruntime (ALLOW_N_CIGAR_READS|\\nALLOW_UNINDEXED_BAM|\\nALLOW_UNSET_BAM_SORT_ORDER|\\nNO_READ_ORDER_VERIFICATION|\\nALLOW_SEQ_DICT_INCOMPATIBILITY|\\nLENIENT_VCF_PROCESSING|ALL)"
    use_jdk_def_later: "Use the JDK Deflater instead\\nof the IntelDeflater for\\nwriting BAMs"
    use_jdk_inf_later: "Use the JDK Inflater instead\\nof the IntelInflater for\\nreading BAMs"
    sites_only: "Output sites-only VCF"
    never_trim_vcf_format_field: "Always output all the records\\nin VCF FORMAT fields, even if\\nsome are missing"
    bam_compression: "Compression level to use for\\nwriting BAM files (0 - 9,\\nhigher is more compressed)"
    simplify_bam: "Strip down read content and"
    num_threads: "Number of data threads to\\nallocate to this analysis"
    num_cpu_threads_per_data_thread: "Number of CPU threads to\\nallocate per data thread"
    monitor_thread_efficiency: "Enable threading efficiency"
    pedigree_string: "Pedigree string for samples"
    pedigree_validation_type: "Validation strictness for\\npedigree (STRICT|SILENT)"
    variant_index_type: "Type of IndexCreator to use\\nfor VCF/BCF indices\\n(DYNAMIC_SEEK|DYNAMIC_SIZE|\\nLINEAR|INTERVAL)"
    variant_index_parameter: "Parameter to pass to the\\nVCF/BCF IndexCreator"
    reference_window_stop: "Reference window stop"
    logging_level: "Set the minimum level of"
    max_runtime: ""
    jar: ""
    seed: "-maxRuntime,--maxRuntime <maxRuntime>                                                    Stop execution cleanly as soon "
    fixmisencodedqualsfixmisencodedqualityscores_fix_misencoded: "-fixMisencodedQuals,--fix_misencoded_quality_scores                                      Fix mis-encoded base quality "
    scores: "-allowPotentiallyMisencodedQuals,--allow_potentially_misencoded_quality_scores           Ignore warnings about base "
    locking: "-no_cmdline_in_header,--no_cmdline_in_header                                             Don't include the command line "
    _disablebamindexing_turn: "--disable_bam_indexing                                                                   Turn off on-the-fly creation "
    files: "--generate_md5                                                                           Enable on-the-fly creation of "
    monitoring: "-rgbl,--read_group_black_list <read_group_black_list>                                    Exclude read groups based on "
    pedpedigree_pedigree_files: "-ped,--pedigree <pedigree>                                                               Pedigree files for samples"
    logging: "-log,--log_to_file <log_to_file>                                                         Set the logging location"
  }
  output {
    File out_stdout = stdout()
  }
}