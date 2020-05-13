class: CommandLineTool
id: bis_snp.cwl
inputs:
- id: analysis_type
  doc: Type of analysis to run
  type: string
  inputBinding:
    prefix: --analysis_type
- id: input_file
  doc: Input file containing sequence  data (BAM or CRAM)
  type: string
  inputBinding:
    prefix: --input_file
- id: show_full_bam_list
  doc: Emit list of input BAM/CRAM  files to log
  type: boolean
  inputBinding:
    prefix: --showFullBamList
- id: read_buffer_size
  doc: Number of reads per SAM file  to buffer in memory
  type: string
  inputBinding:
    prefix: --read_buffer_size
- id: read_filter
  doc: Filters to apply to reads  before analysis
  type: string
  inputBinding:
    prefix: --read_filter
- id: disable_read_filter
  doc: Read filters to disable
  type: string
  inputBinding:
    prefix: --disable_read_filter
- id: intervals
  doc: One or more genomic intervals  over which to operate
  type: long
  inputBinding:
    prefix: --intervals
- id: exclude_intervals
  doc: One or more genomic intervals  to exclude from processing
  type: string
  inputBinding:
    prefix: --excludeIntervals
- id: interval_set_rule
  doc: Set merging approach to use  for combining interval inputs  (UNION|INTERSECTION)
  type: long
  inputBinding:
    prefix: --interval_set_rule
- id: interval_merging
  doc: Interval merging rule for  abutting intervals (ALL| OVERLAPPING_ONLY)
  type: long
  inputBinding:
    prefix: --interval_merging
- id: interval_padding
  doc: Amount of padding (in bp) to  add to each interval
  type: long
  inputBinding:
    prefix: --interval_padding
- id: reference_sequence
  doc: Reference sequence file
  type: string
  inputBinding:
    prefix: --reference_sequence
- id: nondeterministic_random_seed
  doc: Use a non-deterministic random  seed
  type: boolean
  inputBinding:
    prefix: --nonDeterministicRandomSeed
- id: max_runtime
  doc: Stop execution cleanly as soon  as maxRuntime has been reached
  type: long
  inputBinding:
    prefix: --maxRuntime
- id: max_runtime_units
  doc: Unit of time used by  maxRuntime (NANOSECONDS| MICROSECONDS|MILLISECONDS| SECONDS|MINUTES|HOURS|DAYS)
  type: long
  inputBinding:
    prefix: --maxRuntimeUnits
- id: downsampling_type
  doc: Type of read downsampling to  employ at a given locus (NONE| ALL_READS|BY_SAMPLE)
  type: string
  inputBinding:
    prefix: --downsampling_type
- id: down_sample_to_fraction
  doc: Fraction of reads to  downsample to
  type: string
  inputBinding:
    prefix: --downsample_to_fraction
- id: down_sample_to_coverage
  doc: Target coverage threshold for  downsampling to coverage
  type: string
  inputBinding:
    prefix: --downsample_to_coverage
- id: baq
  doc: Type of BAQ calculation to  apply in the engine (OFF| CALCULATE_AS_NECESSARY|
    RECALCULATE)
  type: string
  inputBinding:
    prefix: --baq
- id: baq_gap_open_penalty
  doc: BAQ gap open penalty
  type: string
  inputBinding:
    prefix: --baqGapOpenPenalty
- id: refactor_ndn_cigar_string
  doc: Reduce NDN elements in CIGAR  string
  type: boolean
  inputBinding:
    prefix: --refactor_NDN_cigar_string
- id: fix_m_is_encoded_quality_scores
  doc: Fix mis-encoded base quality  scores
  type: boolean
  inputBinding:
    prefix: --fix_misencoded_quality_scores
- id: allow_potentially_m_is_encoded_quality_scores
  doc: Ignore warnings about base  quality score encoding
  type: boolean
  inputBinding:
    prefix: --allow_potentially_misencoded_quality_scores
- id: use_original_qualities
  doc: Use the base quality scores  from the OQ tag
  type: boolean
  inputBinding:
    prefix: --useOriginalQualities
- id: default_base_qualities
  doc: Assign a default base quality
  type: string
  inputBinding:
    prefix: --defaultBaseQualities
- id: performance_log
  doc: Write GATK runtime performance  log to this file
  type: string
  inputBinding:
    prefix: --performanceLog
- id: b_qsr
  doc: Input covariates table file  for on-the-fly base quality  score recalibration
  type: string
  inputBinding:
    prefix: --BQSR
- id: quantize_quals
  doc: Quantize quality scores to a  given number of levels (with  -BQSR)
  type: string
  inputBinding:
    prefix: --quantize_quals
- id: static_quantized_quals
  doc: Use static quantized quality  scores to a given number of  levels (with -BQSR)
  type: string
  inputBinding:
    prefix: --static_quantized_quals
- id: disable_in_del_quals
  doc: Disable printing of base  insertion and deletion tags  (with -BQSR)
  type: boolean
  inputBinding:
    prefix: --disable_indel_quals
- id: emit_original_quals
  doc: Emit the OQ tag with the  original base qualities (with  -BQSR)
  type: boolean
  inputBinding:
    prefix: --emit_original_quals
- id: preserve_q_scores_less_than
  doc: Don't recalibrate bases with  quality scores less than this  threshold (with
    -BQSR)
  type: string
  inputBinding:
    prefix: --preserve_qscores_less_than
- id: global_q_score_prior
  doc: Global Qscore Bayesian prior  to use for BQSR
  type: string
  inputBinding:
    prefix: --globalQScorePrior
- id: seconds_between_progress_updates
  doc: 'Time interval for process '
  type: boolean
  inputBinding:
    prefix: --secondsBetweenProgressUpdates
- id: validation_strictness
  doc: How strict should we be with  validation (STRICT|LENIENT| SILENT)
  type: string
  inputBinding:
    prefix: --validation_strictness
- id: remove_program_records
  doc: Remove program records from  the SAM header
  type: boolean
  inputBinding:
    prefix: --remove_program_records
- id: keep_program_records
  doc: Keep program records in the  SAM header
  type: boolean
  inputBinding:
    prefix: --keep_program_records
- id: sample_rename_mapping_file
  doc: Rename sample IDs on-the-fly  at runtime using the provided  mapping file
  type: string
  inputBinding:
    prefix: --sample_rename_mapping_file
- id: unsafe
  doc: 'Enable unsafe operations:  nothing will be checked at  runtime (ALLOW_N_CIGAR_READS|
    ALLOW_UNINDEXED_BAM| ALLOW_UNSET_BAM_SORT_ORDER| NO_READ_ORDER_VERIFICATION| ALLOW_SEQ_DICT_INCOMPATIBILITY|
    LENIENT_VCF_PROCESSING|ALL)'
  type: string
  inputBinding:
    prefix: --unsafe
- id: use_jdk_def_later
  doc: Use the JDK Deflater instead  of the IntelDeflater for  writing BAMs
  type: boolean
  inputBinding:
    prefix: --use_jdk_deflater
- id: use_jdk_inf_later
  doc: Use the JDK Inflater instead  of the IntelInflater for  reading BAMs
  type: boolean
  inputBinding:
    prefix: --use_jdk_inflater
- id: no_cmdline_in_header
  doc: Don't include the command line  in output VCF headers
  type: boolean
  inputBinding:
    prefix: --no_cmdline_in_header
- id: sites_only
  doc: Output sites-only VCF
  type: boolean
  inputBinding:
    prefix: --sites_only
- id: never_trim_vcf_format_field
  doc: Always output all the records  in VCF FORMAT fields, even if  some are missing
  type: boolean
  inputBinding:
    prefix: --never_trim_vcf_format_field
- id: bam_compression
  doc: Compression level to use for  writing BAM files (0 - 9,  higher is more compressed)
  type: string
  inputBinding:
    prefix: --bam_compression
- id: simplify_bam
  doc: Strip down read content and  tags
  type: boolean
  inputBinding:
    prefix: --simplifyBAM
- id: disable_bam_indexing
  doc: Turn off on-the-fly creation  of indices for output BAM/CRAM  files
  type: boolean
  inputBinding:
    prefix: --disable_bam_indexing
- id: generate_md5
  doc: Enable on-the-fly creation of  md5s for output BAM files.
  type: boolean
  inputBinding:
    prefix: --generate_md5
- id: num_threads
  doc: Number of data threads to  allocate to this analysis
  type: string
  inputBinding:
    prefix: --num_threads
- id: num_cpu_threads_per_data_thread
  doc: Number of CPU threads to  allocate per data thread
  type: string
  inputBinding:
    prefix: --num_cpu_threads_per_data_thread
- id: monitor_thread_efficiency
  doc: Enable threading efficiency  monitoring
  type: boolean
  inputBinding:
    prefix: --monitorThreadEfficiency
- id: read_group_black_list
  doc: Exclude read groups based on  tags
  type: string
  inputBinding:
    prefix: --read_group_black_list
- id: pedigree
  doc: Pedigree files for samples
  type: string
  inputBinding:
    prefix: --pedigree
- id: pedigree_string
  doc: Pedigree string for samples
  type: string
  inputBinding:
    prefix: --pedigreeString
- id: pedigree_validation_type
  doc: Validation strictness for  pedigree (STRICT|SILENT)
  type: string
  inputBinding:
    prefix: --pedigreeValidationType
- id: variant_index_type
  doc: Type of IndexCreator to use  for VCF/BCF indices  (DYNAMIC_SEEK|DYNAMIC_SIZE|
    LINEAR|INTERVAL)
  type: string
  inputBinding:
    prefix: --variant_index_type
- id: variant_index_parameter
  doc: Parameter to pass to the  VCF/BCF IndexCreator
  type: string
  inputBinding:
    prefix: --variant_index_parameter
- id: reference_window_stop
  doc: Reference window stop
  type: string
  inputBinding:
    prefix: --reference_window_stop
- id: logging_level
  doc: Set the minimum level of  logging
  type: string
  inputBinding:
    prefix: --logging_level
- id: log_to_file
  doc: Set the logging location
  type: string
  inputBinding:
    prefix: --log_to_file
outputs: []
cwlVersion: v1.1
baseCommand:
- bis-snp
