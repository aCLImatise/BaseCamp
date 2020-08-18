class: CommandLineTool
id: ../../../bcbio_variation.cwl
inputs:
- id: analysis_type
  doc: Name of the tool to run
  type: string
  inputBinding:
    prefix: --analysis_type
- id: input_file
  doc: Input file containing sequence  data (SAM or BAM)
  type: string
  inputBinding:
    prefix: --input_file
- id: read_buffer_size
  doc: Number of reads per SAM file to  buffer in memory
  type: string
  inputBinding:
    prefix: --read_buffer_size
- id: run_mode_stdout
  doc: Run reporting mode (NO_ET|AWS| STDOUT)
  type: string
  inputBinding:
    prefix: --phone_home
- id: g_atk_key
  doc: GATK key file required to run  with -et NO_ET
  type: string
  inputBinding:
    prefix: --gatk_key
- id: tag
  doc: Tag to identify this GATK run  as part of a group of runs
  type: string
  inputBinding:
    prefix: --tag
- id: read_filter
  doc: Filters to apply to reads  before analysis
  type: string
  inputBinding:
    prefix: --read_filter
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
- id: set_merging_approach
  doc: Set merging approach to use for  combining interval inputs  (UNION|INTERSECTION)
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
- id: stop_execution_cleanly
  doc: Stop execution cleanly as soon  as maxRuntime has been reached
  type: long
  inputBinding:
    prefix: --maxRuntime
- id: max_runtime_units
  doc: Unit of time used by maxRuntime  (NANOSECONDS|MICROSECONDS| MILLISECONDS|SECONDS|MINUTES|
    HOURS|DAYS)
  type: long
  inputBinding:
    prefix: --maxRuntimeUnits
- id: downsampling_type
  doc: Type of read downsampling to  employ at a given locus (NONE| ALL_READS|BY_SAMPLE)
  type: string
  inputBinding:
    prefix: --downsampling_type
- id: down_sample_to_fraction
  doc: Fraction of reads to downsample  to
  type: string
  inputBinding:
    prefix: --downsample_to_fraction
- id: target_coverage_threshold
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
  doc: refactor cigar string with NDN  elements to one element
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
  doc: Input covariates table file for  on-the-fly base quality score  recalibration
  type: string
  inputBinding:
    prefix: --BQSR
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
  doc: Global Qscore Bayesian prior to  use for BQSR
  type: string
  inputBinding:
    prefix: --globalQScorePrior
- id: validation_strictness
  doc: How strict should we be with  validation (STRICT|LENIENT| SILENT)
  type: string
  inputBinding:
    prefix: --validation_strictness
- id: remove_program_records
  doc: Remove program records from the  SAM header
  type: boolean
  inputBinding:
    prefix: --remove_program_records
- id: keep_program_records
  doc: Keep program records in the SAM  header
  type: boolean
  inputBinding:
    prefix: --keep_program_records
- id: sample_rename_mapping_file
  doc: Rename sample IDs on-the-fly at  runtime using the provided  mapping file
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
- id: num_bam_file_handles
  doc: Total number of BAM file  handles to keep open  simultaneously
  type: string
  inputBinding:
    prefix: --num_bam_file_handles
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
  doc: Validation strictness for  pedigree information (STRICT| SILENT)
  type: string
  inputBinding:
    prefix: --pedigreeValidationType
- id: variant_index_type
  doc: Type of IndexCreator to use for  VCF/BCF indices (DYNAMIC_SEEK| DYNAMIC_SIZE|LINEAR|INTERVAL)
  type: string
  inputBinding:
    prefix: --variant_index_type
- id: variant_index_parameter
  doc: Parameter to pass to the  VCF/BCF IndexCreator
  type: string
  inputBinding:
    prefix: --variant_index_parameter
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
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_51
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: var_52
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: var_53
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: var_54
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- bcbio-variation
