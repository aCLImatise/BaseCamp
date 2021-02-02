class: CommandLineTool
id: bcbio_variation.cwl
inputs:
- id: in_analysis_type
  doc: Name of the tool to run
  type: string
  inputBinding:
    prefix: --analysis_type
- id: in_arg_file
  doc: "Reads arguments from the\nspecified file"
  type: File
  inputBinding:
    prefix: --arg_file
- id: in_input_file
  doc: "Input file containing sequence\ndata (SAM or BAM)"
  type: File
  inputBinding:
    prefix: --input_file
- id: in_read_buffer_size
  doc: "Number of reads per SAM file to\nbuffer in memory"
  type: long
  inputBinding:
    prefix: --read_buffer_size
- id: in_phone_home
  doc: "Run reporting mode (NO_ET|AWS|\nSTDOUT)"
  type: string
  inputBinding:
    prefix: --phone_home
- id: in_g_atk_key
  doc: "GATK key file required to run\nwith -et NO_ET"
  type: File
  inputBinding:
    prefix: --gatk_key
- id: in_tag
  doc: "Tag to identify this GATK run\nas part of a group of runs"
  type: string
  inputBinding:
    prefix: --tag
- id: in_read_filter
  doc: "Filters to apply to reads\nbefore analysis"
  type: string
  inputBinding:
    prefix: --read_filter
- id: in_intervals
  doc: "One or more genomic intervals\nover which to operate"
  type: string
  inputBinding:
    prefix: --intervals
- id: in_exclude_intervals
  doc: "One or more genomic intervals\nto exclude from processing"
  type: string
  inputBinding:
    prefix: --excludeIntervals
- id: in_interval_set_rule
  doc: "Set merging approach to use for\ncombining interval inputs\n(UNION|INTERSECTION)"
  type: string
  inputBinding:
    prefix: --interval_set_rule
- id: in_interval_merging
  doc: "Interval merging rule for\nabutting intervals (ALL|\nOVERLAPPING_ONLY)"
  type: string
  inputBinding:
    prefix: --interval_merging
- id: in_interval_padding
  doc: "Amount of padding (in bp) to\nadd to each interval"
  type: string
  inputBinding:
    prefix: --interval_padding
- id: in_reference_sequence
  doc: Reference sequence file
  type: File
  inputBinding:
    prefix: --reference_sequence
- id: in_nondeterministic_random_seed
  doc: Use a non-deterministic random
  type: boolean
  inputBinding:
    prefix: --nonDeterministicRandomSeed
- id: in_max_runtime_units
  doc: "Unit of time used by maxRuntime\n(NANOSECONDS|MICROSECONDS|\nMILLISECONDS|SECONDS|MINUTES|\n\
    HOURS|DAYS)"
  type: long
  inputBinding:
    prefix: --maxRuntimeUnits
- id: in_downsampling_type
  doc: "Type of read downsampling to\nemploy at a given locus (NONE|\nALL_READS|BY_SAMPLE)"
  type: string
  inputBinding:
    prefix: --downsampling_type
- id: in_down_sample_to_fraction
  doc: Fraction of reads to downsample
  type: string
  inputBinding:
    prefix: --downsample_to_fraction
- id: in_baq
  doc: "Type of BAQ calculation to\napply in the engine (OFF|\nCALCULATE_AS_NECESSARY|\n\
    RECALCULATE)"
  type: string
  inputBinding:
    prefix: --baq
- id: in_baq_gap_open_penalty
  doc: BAQ gap open penalty
  type: string
  inputBinding:
    prefix: --baqGapOpenPenalty
- id: in_refactor_ndn_cigar_string
  doc: "refactor cigar string with NDN\nelements to one element"
  type: boolean
  inputBinding:
    prefix: --refactor_NDN_cigar_string
- id: in_fix_m_is_encoded_quality_scores
  doc: Fix mis-encoded base quality
  type: boolean
  inputBinding:
    prefix: --fix_misencoded_quality_scores
- id: in_use_original_qualities
  doc: "Use the base quality scores\nfrom the OQ tag"
  type: boolean
  inputBinding:
    prefix: --useOriginalQualities
- id: in_default_base_qualities
  doc: Assign a default base quality
  type: string
  inputBinding:
    prefix: --defaultBaseQualities
- id: in_performance_log
  doc: "Write GATK runtime performance\nlog to this file"
  type: File
  inputBinding:
    prefix: --performanceLog
- id: in_b_qsr
  doc: "Input covariates table file for\non-the-fly base quality score\nrecalibration"
  type: File
  inputBinding:
    prefix: --BQSR
- id: in_disable_in_del_quals
  doc: "Disable printing of base\ninsertion and deletion tags\n(with -BQSR)"
  type: boolean
  inputBinding:
    prefix: --disable_indel_quals
- id: in_emit_original_quals
  doc: "Emit the OQ tag with the\noriginal base qualities (with\n-BQSR)"
  type: boolean
  inputBinding:
    prefix: --emit_original_quals
- id: in_preserve_q_scores_less_than
  doc: "Don't recalibrate bases with\nquality scores less than this\nthreshold (with\
    \ -BQSR)"
  type: string
  inputBinding:
    prefix: --preserve_qscores_less_than
- id: in_global_q_score_prior
  doc: "Global Qscore Bayesian prior to\nuse for BQSR"
  type: string
  inputBinding:
    prefix: --globalQScorePrior
- id: in_validation_strictness
  doc: "How strict should we be with\nvalidation (STRICT|LENIENT|\nSILENT)"
  type: string
  inputBinding:
    prefix: --validation_strictness
- id: in_remove_program_records
  doc: "Remove program records from the\nSAM header"
  type: boolean
  inputBinding:
    prefix: --remove_program_records
- id: in_keep_program_records
  doc: Keep program records in the SAM
  type: boolean
  inputBinding:
    prefix: --keep_program_records
- id: in_unsafe
  doc: "Enable unsafe operations:\nnothing will be checked at\nruntime (ALLOW_N_CIGAR_READS|\n\
    ALLOW_UNINDEXED_BAM|\nALLOW_UNSET_BAM_SORT_ORDER|\nNO_READ_ORDER_VERIFICATION|\n\
    ALLOW_SEQ_DICT_INCOMPATIBILITY|\nLENIENT_VCF_PROCESSING|ALL)"
  type: string
  inputBinding:
    prefix: --unsafe
- id: in_num_threads
  doc: "Number of data threads to\nallocate to this analysis"
  type: long
  inputBinding:
    prefix: --num_threads
- id: in_num_cpu_threads_per_data_thread
  doc: "Number of CPU threads to\nallocate per data thread"
  type: long
  inputBinding:
    prefix: --num_cpu_threads_per_data_thread
- id: in_monitor_thread_efficiency
  doc: Enable threading efficiency
  type: boolean
  inputBinding:
    prefix: --monitorThreadEfficiency
- id: in_pedigree_string
  doc: Pedigree string for samples
  type: string
  inputBinding:
    prefix: --pedigreeString
- id: in_pedigree_validation_type
  doc: "Validation strictness for\npedigree information (STRICT|\nSILENT)"
  type: string
  inputBinding:
    prefix: --pedigreeValidationType
- id: in_variant_index_type
  doc: "Type of IndexCreator to use for\nVCF/BCF indices (DYNAMIC_SEEK|\nDYNAMIC_SIZE|LINEAR|INTERVAL)"
  type: string
  inputBinding:
    prefix: --variant_index_type
- id: in_variant_index_parameter
  doc: "Parameter to pass to the\nVCF/BCF IndexCreator"
  type: string
  inputBinding:
    prefix: --variant_index_parameter
- id: in_logging_level
  doc: Set the minimum level of
  type: string
  inputBinding:
    prefix: --logging_level
- id: in_max_runtime
  doc: ''
  type: long
  inputBinding:
    prefix: -maxRuntime
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_seed
  doc: '-maxRuntime,--maxRuntime <maxRuntime>                                                   Stop
    execution cleanly as soon '
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: '-dcov,--downsample_to_coverage <downsample_to_coverage>                                 Target
    coverage threshold for '
  type: string
  inputBinding:
    position: 0
- id: in_scores
  doc: '-allowPotentiallyMisencodedQuals,--allow_potentially_misencoded_quality_scores          Ignore
    warnings about base '
  type: string
  inputBinding:
    position: 0
- id: in_header
  doc: '-sample_rename_mapping_file,--sample_rename_mapping_file <sample_rename_mapping_file>   Rename
    sample IDs on-the-fly at '
  type: string
  inputBinding:
    position: 0
- id: in_monitoring
  doc: '-bfh,--num_bam_file_handles <num_bam_file_handles>                                      Total
    number of BAM file '
  type: string
  inputBinding:
    position: 0
- id: in_simultaneously
  doc: '-rgbl,--read_group_black_list <read_group_black_list>                                   Exclude
    read groups based on '
  type: string
  inputBinding:
    position: 0
- id: in_tags
  doc: -ped,--pedigree <pedigree>                                                              Pedigree
    files for samples
  type: string
  inputBinding:
    position: 1
- id: in_logging
  doc: -log,--log_to_file <log_to_file>                                                        Set
    the logging location
  type: string
  inputBinding:
    position: 2
- id: in_annotator
  doc: VariantAnnotator              Annotates variant calls with context information.
  type: string
  inputBinding:
    position: 3
- id: in_beagle
  doc: 'BeagleOutputToVCF             Takes files produced by Beagle imputation engine
    and creates a vcf with modified '
  type: string
  inputBinding:
    position: 4
- id: in_annotations_dot
  doc: 'ProduceBeagleInput            Converts the input VCF into a format accepted
    by the Beagle imputation/analysis '
  type: string
  inputBinding:
    position: 5
- id: in_program_dot
  doc: 'VariantsToBeagleUnphased      Produces an input file to Beagle imputation
    engine, listing unphased, hard-called '
  type: string
  inputBinding:
    position: 6
- id: in_callableloci_emits_file
  doc: "CallableLoci                  Emits a data file containing information about\
    \ callable, uncallable, poorly mapped, and \nother parts of the genome <p/>"
  type: string
  inputBinding:
    position: 0
- id: in_compare_callable_loci
  doc: Test routine for new VariantContext object
  type: string
  inputBinding:
    position: 1
- id: in_depth_of_coverage
  doc: "Assess sequence coverage by a wide array of metrics, partitioned by sample,\
    \ read group, \nor library"
  type: string
  inputBinding:
    position: 2
- id: in_gc_content_by_interval
  doc: Walks along reference and calculates the GC content for each interval.
  type: string
  inputBinding:
    position: 3
- id: in_diagnostics
  doc: 'CoveredByNSamplesSites        Print intervals file with all the variant sites
    for which most of the samples have good '
  type: string
  inputBinding:
    position: 4
- id: in_errorratepercycle_compute_rate
  doc: ErrorRatePerCycle             Compute the read error rate per position
  type: string
  inputBinding:
    position: 5
- id: in_read_group_properties
  doc: "Emits a GATKReport containing read group, sample, library, platform, center,\
    \ sequencing \ndata, paired end status, simple read type name (e.g."
  type: string
  inputBinding:
    position: 6
- id: in_read_length_distribution
  doc: Outputs the read lengths of all the reads in a file.
  type: string
  inputBinding:
    position: 7
- id: in_diff_engine
  doc: DiffObjects                   A generic engine for comparing tree-structured
    objects
  type: string
  inputBinding:
    position: 8
- id: in_examples
  doc: GATKPaperGenotyper            A simple Bayesian genotyper, that outputs a text
    based call format.
  type: string
  inputBinding:
    position: 9
- id: in_fast_a
  doc: FastaAlternateReferenceMaker  Generates an alternative reference sequence over
    the specified interval.
  type: string
  inputBinding:
    position: 10
- id: in_fast_a_reference_maker
  doc: "Renders a new reference in FASTA format consisting of only those loci provided\
    \ in the \ninput data set."
  type: string
  inputBinding:
    position: 11
- id: in_fast_a_stats
  doc: Calculate basic statistics about the reference sequence itself
  type: string
  inputBinding:
    position: 12
- id: in_filters
  doc: VariantFiltration             Filters variant calls using a number of user-selectable,
    parameterizable criteria.
  type: string
  inputBinding:
    position: 13
- id: in_qc
  doc: CheckPileup                   Compare GATK's internal pileup to a reference
    Samtools pileup
  type: string
  inputBinding:
    position: 14
- id: in_count_bases
  doc: 'Walks over the input data set, calculating the number of bases seen for diagnostic '
  type: string
  inputBinding:
    position: 15
- id: in_countintervals_count_contiguous
  doc: CountIntervals                Count contiguous regions in an interval list.
  type: string
  inputBinding:
    position: 16
- id: in_count_loci
  doc: "Walks over the input data set, calculating the total number of covered loci\
    \ for \ndiagnostic purposes."
  type: string
  inputBinding:
    position: 17
- id: in_count_males
  doc: "Walks over the input data set, calculating the number of reads seen from male\
    \ samples \nfor diagnostic purposes."
  type: string
  inputBinding:
    position: 18
- id: in_count_read_events
  doc: "Walks over the input data set, counting the number of read events (from the\
    \ CIGAR \noperator)"
  type: string
  inputBinding:
    position: 19
- id: in_count_reads
  doc: 'Walks over the input data set, calculating the number of reads seen for diagnostic '
  type: string
  inputBinding:
    position: 20
- id: in_countrods_prints_counts
  doc: CountRODs                     Prints out counts of the number of reference
    ordered data objects encountered.
  type: string
  inputBinding:
    position: 21
- id: in_count_rods_by_ref
  doc: 'Prints out counts of the number of reference ordered data objects encountered
    along the '
  type: string
  inputBinding:
    position: 22
- id: in_reference_dot
  doc: 'CountTerminusEvent            Walks over the input data set, counting the
    number of reads ending in '
  type: string
  inputBinding:
    position: 23
- id: in_error_throwing
  doc: A walker that simply throws errors.
  type: string
  inputBinding:
    position: 0
- id: in_flag_stat
  doc: A reimplementation of the 'samtools flagstat' subcommand in the GATK
  type: string
  inputBinding:
    position: 1
- id: in_pile_up
  doc: Emulates the samtools pileup command to print aligned reads
  type: string
  inputBinding:
    position: 2
- id: in_print_rods
  doc: Prints out all of the RODs in the input data set.
  type: string
  inputBinding:
    position: 3
- id: in_qc_ref
  doc: Quality control for the reference fasta
  type: string
  inputBinding:
    position: 4
- id: in_read_clipping_stats
  doc: Read clipping statistics for all reads.
  type: string
  inputBinding:
    position: 5
- id: in_read_utils
  doc: ClipReads                     Read clipping based on quality, position or sequence
    matching
  type: string
  inputBinding:
    position: 6
- id: in_print_reads
  doc: "Renders, in SAM/BAM format, all reads from the input data set in the order\
    \ in which \nthey appear in the input file."
  type: string
  inputBinding:
    position: 7
- id: in_read_adaptor_trimmer
  doc: Utility tool to blindly strip base adaptors.
  type: string
  inputBinding:
    position: 8
- id: in_splits_am_file
  doc: "Divides the input data set into separate BAM files, one for each sample in\
    \ the input \ndata set."
  type: string
  inputBinding:
    position: 9
- id: in_variant_eval
  doc: "VariantEval                   General-purpose tool for variant evaluation\
    \ (% in dbSNP, genotype concordance, Ti/Tv \nratios, and a lot more)"
  type: string
  inputBinding:
    position: 10
- id: in_variant_utils
  doc: CombineVariants               Combines VCF records from different sources.
  type: string
  inputBinding:
    position: 11
- id: in_filter_lifted_variants
  doc: Filters a lifted-over VCF file for ref bases that have been changed.
  type: string
  inputBinding:
    position: 12
- id: in_genotype_concordance
  doc: "Genotype concordance (per-sample and aggregate counts and frequencies, NRD/NRS\
    \ and site \nallele overlaps) between two callsets"
  type: string
  inputBinding:
    position: 13
- id: in_left_align_and_trim_variants
  doc: Left-aligns indels from a variants file.
  type: string
  inputBinding:
    position: 14
- id: in_lift_over_variants
  doc: Lifts a VCF file over from one build to another.
  type: string
  inputBinding:
    position: 15
- id: in_randomly_split_variants
  doc: "Takes a VCF file, randomly splits variants into two different sets, and outputs\
    \ 2 new \nVCFs with the results."
  type: string
  inputBinding:
    position: 16
- id: in_select_headers
  doc: Selects headers from a VCF source.
  type: string
  inputBinding:
    position: 17
- id: in_select_variants
  doc: Selects variants from a VCF source.
  type: string
  inputBinding:
    position: 18
- id: in_validate_variants
  doc: Validates a VCF file with an extra strict set of criteria.
  type: string
  inputBinding:
    position: 19
- id: in_variants_to_allelic_primitives
  doc: "Takes alleles from a variants file and breaks them up (if possible) into more\
    \ \nbasic/primitive alleles."
  type: string
  inputBinding:
    position: 20
- id: in_variants_to_binary_ped
  doc: Converts a VCF file to a binary plink Ped file (.bed/.bim/.fam)
  type: string
  inputBinding:
    position: 21
- id: in_variants_to_table
  doc: Emits specific fields from a VCF file to a tab-deliminated table
  type: string
  inputBinding:
    position: 22
- id: in_variants_to_vcf
  doc: Converts variants from other file formats to VCF format.
  type: string
  inputBinding:
    position: 23
- id: in_variant_validation_assessor
  doc: "Annotates a validation (from Sequenom for example) VCF with QC metrics (HW-equilibrium,\
    \ \n% failed probes)"
  type: string
  inputBinding:
    position: 24
- id: in_vcf_walker
  doc: 'VcfSimpleStatsWalker          '
  type: string
  inputBinding:
    position: 25
- id: in_walkers
  doc: 'LeftAlignVariants             '
  type: string
  inputBinding:
    position: 26
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bcbio-variation
