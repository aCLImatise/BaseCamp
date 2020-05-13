class: CommandLineTool
id: gatk_framework.cwl
inputs:
- id: annotator
  doc: VariantAnnotator              Annotate variant calls with context information
  type: string
  inputBinding:
    position: 0
- id: coverage
  doc: CallableLoci                  Collect statistics on callable, uncallable, poorly
    mapped, and other parts of the  genome CompareCallableLoci           Compare callability
    statistics DepthOfCoverage               Assess sequence coverage by a wide array
    of metrics, partitioned by sample, read group,  or library GCContentByInterval           Calculates
    the GC content of the reference sequence for each interval
  type: string
  inputBinding:
    position: 1
- id: da_kl
  doc: SomaticPindelFilter           Filters pindel output based on coverage and Fisher's
    exact test (BH corrected).
  type: string
  inputBinding:
    position: 2
- id: diagnostics
  doc: ErrorRatePerCycle             Compute the read error rate per position ReadGroupProperties           Collect
    statistics about read groups and their properties ReadLengthDistribution        Collect
    read length statistics
  type: string
  inputBinding:
    position: 3
- id: diff_engine
  doc: DiffObjects                   A generic engine for comparing tree-structured
    objects
  type: string
  inputBinding:
    position: 4
- id: examples
  doc: GATKPaperGenotyper            Simple Bayesian genotyper used in the original
    GATK paper
  type: string
  inputBinding:
    position: 5
- id: fast_a
  doc: FastaAlternateReferenceMaker  Generate an alternative reference sequence over
    the specified interval FastaReferenceMaker           Create a subset of a FASTA
    reference sequence FastaStats                    Calculate basic statistics about
    the reference sequence itself
  type: string
  inputBinding:
    position: 6
- id: filters
  doc: VariantFiltration             Filter variant calls based on INFO and FORMAT
    annotations
  type: string
  inputBinding:
    position: 7
- id: indels
  doc: IndelRealigner                Perform local realignment of reads around indels
    LeftAlignIndels               Left-align indels within reads in a bam file RealignerTargetCreator        Define
    intervals to target for local realignment
  type: string
  inputBinding:
    position: 8
- id: qc
  doc: CheckPileup                   Compare GATK's internal pileup to a reference
    Samtools pileup CountBases                    Count the number of bases in a set
    of reads CountIntervals                Count contiguous regions in an interval
    list CountLoci                     Count the total number of covered loci CountMales                    Count
    the number of reads seen from male samples CountReadEvents               Count
    the number of read events CountReads                    Count the number of reads
    CountRODs                     Count the number of ROD objects encountered CountRODsByRef                Count
    the number of ROD objects encountered along the reference CountTerminusEvent            Count
    the number of reads ending in insertions, deletions or soft-clips ErrorThrowing                 A
    walker that simply throws errors. FlagStat                      Collect statistics
    about sequence reads based on their SAM flags Pileup                        Print
    read alignments in Pileup-style format PrintRODs                     Print out
    all of the RODs in the input data set QCRef                         Quality control
    for the reference fasta ReadClippingStats             Collect read clipping statistics
  type: string
  inputBinding:
    position: 9
- id: read_utils
  doc: ClipReads                     Read clipping based on quality, position or sequence
    matching PrintReads                    Write out sequence read data (for filtering,
    merging, subsetting etc) SplitSamFile                  Split a BAM file by sample
  type: string
  inputBinding:
    position: 10
- id: rnase_q
  doc: ASEReadCounter                Calculate read counts per allele for allele-specific
    expression analysis
  type: string
  inputBinding:
    position: 11
- id: variant_eval
  doc: VariantEval                   General-purpose tool for variant evaluation (%
    in dbSNP, genotype concordance, Ti/Tv  ratios, and a lot more)
  type: string
  inputBinding:
    position: 12
- id: variant_utils
  doc: CombineVariants               Combine variant records from different sources
    GenotypeConcordance           Genotype concordance between two callsets LeftAlignAndTrimVariants      Left-align
    indels in a variant callset RandomlySplitVariants         Randomly split variants
    into different sets SelectHeaders                 Selects headers from a VCF source
    SelectVariants                Select a subset of variants from a larger callset
    ValidateVariants              Validate a VCF file with an extra strict set of
    criteria VariantsToAllelicPrimitives   Simplify multi-nucleotide variants (MNPs)
    into more basic/primitive alleles. VariantsToBinaryPed           Convert VCF to
    binary pedigree file VariantsToTable               Extract specific fields from
    a VCF file to a tab-delimited table VariantsToVCF                 Convert variants
    from other file formats to VCF format
  type: string
  inputBinding:
    position: 13
- id: analysis_type
  doc: Name of the tool to run
  type: string
  inputBinding:
    prefix: --analysis_type
- id: arg_file
  doc: Reads arguments from the  specified file
  type: string
  inputBinding:
    prefix: --arg_file
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
- gatk-framework
