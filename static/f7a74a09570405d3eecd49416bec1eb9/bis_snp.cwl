class: CommandLineTool
id: bis_snp.cwl
inputs:
- id: in_analysis_type
  doc: Type of analysis to run
  type: string?
  inputBinding:
    prefix: --analysis_type
- id: in_input_file
  doc: "Input file containing sequence\ndata (BAM or CRAM)"
  type: File?
  inputBinding:
    prefix: --input_file
- id: in_show_full_bam_list
  doc: "Emit list of input BAM/CRAM\nfiles to log"
  type: boolean?
  inputBinding:
    prefix: --showFullBamList
- id: in_read_buffer_size
  doc: "Number of reads per SAM file\nto buffer in memory"
  type: long?
  inputBinding:
    prefix: --read_buffer_size
- id: in_read_filter
  doc: "Filters to apply to reads\nbefore analysis"
  type: string?
  inputBinding:
    prefix: --read_filter
- id: in_disable_read_filter
  doc: Read filters to disable
  type: string?
  inputBinding:
    prefix: --disable_read_filter
- id: in_intervals
  doc: "One or more genomic intervals\nover which to operate"
  type: string?
  inputBinding:
    prefix: --intervals
- id: in_exclude_intervals
  doc: "One or more genomic intervals\nto exclude from processing"
  type: string?
  inputBinding:
    prefix: --excludeIntervals
- id: in_interval_set_rule
  doc: "Set merging approach to use\nfor combining interval inputs\n(UNION|INTERSECTION)"
  type: string?
  inputBinding:
    prefix: --interval_set_rule
- id: in_interval_merging
  doc: "Interval merging rule for\nabutting intervals (ALL|\nOVERLAPPING_ONLY)"
  type: string?
  inputBinding:
    prefix: --interval_merging
- id: in_interval_padding
  doc: "Amount of padding (in bp) to\nadd to each interval"
  type: string?
  inputBinding:
    prefix: --interval_padding
- id: in_reference_sequence
  doc: Reference sequence file
  type: File?
  inputBinding:
    prefix: --reference_sequence
- id: in_nondeterministic_random_seed
  doc: Use a non-deterministic random
  type: boolean?
  inputBinding:
    prefix: --nonDeterministicRandomSeed
- id: in_max_runtime_units
  doc: "Unit of time used by\nmaxRuntime (NANOSECONDS|\nMICROSECONDS|MILLISECONDS|\n\
    SECONDS|MINUTES|HOURS|DAYS)"
  type: long?
  inputBinding:
    prefix: --maxRuntimeUnits
- id: in_downsampling_type
  doc: "Type of read downsampling to\nemploy at a given locus (NONE|\nALL_READS|BY_SAMPLE)"
  type: string?
  inputBinding:
    prefix: --downsampling_type
- id: in_down_sample_to_fraction
  doc: "Fraction of reads to\ndownsample to"
  type: string?
  inputBinding:
    prefix: --downsample_to_fraction
- id: in_down_sample_to_coverage
  doc: "Target coverage threshold for\ndownsampling to coverage"
  type: string?
  inputBinding:
    prefix: --downsample_to_coverage
- id: in_baq
  doc: "Type of BAQ calculation to\napply in the engine (OFF|\nCALCULATE_AS_NECESSARY|\n\
    RECALCULATE)"
  type: string?
  inputBinding:
    prefix: --baq
- id: in_baq_gap_open_penalty
  doc: BAQ gap open penalty
  type: string?
  inputBinding:
    prefix: --baqGapOpenPenalty
- id: in_refactor_ndn_cigar_string
  doc: Reduce NDN elements in CIGAR
  type: boolean?
  inputBinding:
    prefix: --refactor_NDN_cigar_string
- id: in_use_original_qualities
  doc: "Use the base quality scores\nfrom the OQ tag"
  type: boolean?
  inputBinding:
    prefix: --useOriginalQualities
- id: in_default_base_qualities
  doc: Assign a default base quality
  type: string?
  inputBinding:
    prefix: --defaultBaseQualities
- id: in_performance_log
  doc: "Write GATK runtime performance\nlog to this file"
  type: File?
  inputBinding:
    prefix: --performanceLog
- id: in_b_qsr
  doc: "Input covariates table file\nfor on-the-fly base quality\nscore recalibration"
  type: File?
  inputBinding:
    prefix: --BQSR
- id: in_quantize_quals
  doc: "Quantize quality scores to a\ngiven number of levels (with\n-BQSR)"
  type: long?
  inputBinding:
    prefix: --quantize_quals
- id: in_static_quantized_quals
  doc: "Use static quantized quality\nscores to a given number of\nlevels (with -BQSR)"
  type: long?
  inputBinding:
    prefix: --static_quantized_quals
- id: in_disable_in_del_quals
  doc: "Disable printing of base\ninsertion and deletion tags\n(with -BQSR)"
  type: boolean?
  inputBinding:
    prefix: --disable_indel_quals
- id: in_emit_original_quals
  doc: "Emit the OQ tag with the\noriginal base qualities (with\n-BQSR)"
  type: boolean?
  inputBinding:
    prefix: --emit_original_quals
- id: in_preserve_q_scores_less_than
  doc: "Don't recalibrate bases with\nquality scores less than this\nthreshold (with\
    \ -BQSR)"
  type: string?
  inputBinding:
    prefix: --preserve_qscores_less_than
- id: in_global_q_score_prior
  doc: "Global Qscore Bayesian prior\nto use for BQSR"
  type: string?
  inputBinding:
    prefix: --globalQScorePrior
- id: in_seconds_between_progress_updates
  doc: Time interval for process
  type: boolean?
  inputBinding:
    prefix: --secondsBetweenProgressUpdates
- id: in_validation_strictness
  doc: "How strict should we be with\nvalidation (STRICT|LENIENT|\nSILENT)"
  type: string?
  inputBinding:
    prefix: --validation_strictness
- id: in_remove_program_records
  doc: "Remove program records from\nthe SAM header"
  type: boolean?
  inputBinding:
    prefix: --remove_program_records
- id: in_keep_program_records
  doc: "Keep program records in the\nSAM header"
  type: boolean?
  inputBinding:
    prefix: --keep_program_records
- id: in_sample_rename_mapping_file
  doc: "Rename sample IDs on-the-fly\nat runtime using the provided\nmapping file"
  type: File?
  inputBinding:
    prefix: --sample_rename_mapping_file
- id: in_unsafe
  doc: "Enable unsafe operations:\nnothing will be checked at\nruntime (ALLOW_N_CIGAR_READS|\n\
    ALLOW_UNINDEXED_BAM|\nALLOW_UNSET_BAM_SORT_ORDER|\nNO_READ_ORDER_VERIFICATION|\n\
    ALLOW_SEQ_DICT_INCOMPATIBILITY|\nLENIENT_VCF_PROCESSING|ALL)"
  type: string?
  inputBinding:
    prefix: --unsafe
- id: in_use_jdk_def_later
  doc: "Use the JDK Deflater instead\nof the IntelDeflater for\nwriting BAMs"
  type: boolean?
  inputBinding:
    prefix: --use_jdk_deflater
- id: in_use_jdk_inf_later
  doc: "Use the JDK Inflater instead\nof the IntelInflater for\nreading BAMs"
  type: boolean?
  inputBinding:
    prefix: --use_jdk_inflater
- id: in_sites_only
  doc: Output sites-only VCF
  type: boolean?
  inputBinding:
    prefix: --sites_only
- id: in_never_trim_vcf_format_field
  doc: "Always output all the records\nin VCF FORMAT fields, even if\nsome are missing"
  type: boolean?
  inputBinding:
    prefix: --never_trim_vcf_format_field
- id: in_bam_compression
  doc: "Compression level to use for\nwriting BAM files (0 - 9,\nhigher is more compressed)"
  type: long?
  inputBinding:
    prefix: --bam_compression
- id: in_simplify_bam
  doc: Strip down read content and
  type: boolean?
  inputBinding:
    prefix: --simplifyBAM
- id: in_num_threads
  doc: "Number of data threads to\nallocate to this analysis"
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_num_cpu_threads_per_data_thread
  doc: "Number of CPU threads to\nallocate per data thread"
  type: long?
  inputBinding:
    prefix: --num_cpu_threads_per_data_thread
- id: in_monitor_thread_efficiency
  doc: Enable threading efficiency
  type: boolean?
  inputBinding:
    prefix: --monitorThreadEfficiency
- id: in_pedigree_string
  doc: Pedigree string for samples
  type: string?
  inputBinding:
    prefix: --pedigreeString
- id: in_pedigree_validation_type
  doc: "Validation strictness for\npedigree (STRICT|SILENT)"
  type: string?
  inputBinding:
    prefix: --pedigreeValidationType
- id: in_variant_index_type
  doc: "Type of IndexCreator to use\nfor VCF/BCF indices\n(DYNAMIC_SEEK|DYNAMIC_SIZE|\n\
    LINEAR|INTERVAL)"
  type: string?
  inputBinding:
    prefix: --variant_index_type
- id: in_variant_index_parameter
  doc: "Parameter to pass to the\nVCF/BCF IndexCreator"
  type: string?
  inputBinding:
    prefix: --variant_index_parameter
- id: in_reference_window_stop
  doc: Reference window stop
  type: string?
  inputBinding:
    prefix: --reference_window_stop
- id: in_logging_level
  doc: Set the minimum level of
  type: string?
  inputBinding:
    prefix: --logging_level
- id: in_max_runtime
  doc: ''
  type: long?
  inputBinding:
    prefix: -maxRuntime
- id: in_jar
  doc: ''
  type: long?
  inputBinding:
    prefix: -jar
- id: in_seed
  doc: '-maxRuntime,--maxRuntime <maxRuntime>                                                    Stop
    execution cleanly as soon '
  type: string
  inputBinding:
    position: 0
- id: in_string
  doc: '-fixMisencodedQuals,--fix_misencoded_quality_scores                                      Fix
    mis-encoded base quality '
  type: string
  inputBinding:
    position: 0
- id: in_scores
  doc: '-allowPotentiallyMisencodedQuals,--allow_potentially_misencoded_quality_scores           Ignore
    warnings about base '
  type: string
  inputBinding:
    position: 1
- id: in_locking
  doc: "-no_cmdline_in_header,--no_cmdline_in_header                             \
    \                Don't include the command line "
  type: string
  inputBinding:
    position: 0
- id: in__disablebamindexing_turn
  doc: '--disable_bam_indexing                                                                   Turn
    off on-the-fly creation '
  type: string
  inputBinding:
    position: 0
- id: in_files
  doc: '--generate_md5                                                                           Enable
    on-the-fly creation of '
  type: string
  inputBinding:
    position: 0
- id: in_monitoring
  doc: '-rgbl,--read_group_black_list <read_group_black_list>                                    Exclude
    read groups based on '
  type: string
  inputBinding:
    position: 0
- id: in_pedpedigree_pedigree_files
  doc: -ped,--pedigree <pedigree>                                                               Pedigree
    files for samples
  type: string
  inputBinding:
    position: 1
- id: in_logging
  doc: -log,--log_to_file <log_to_file>                                                         Set
    the logging location
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bis-snp
