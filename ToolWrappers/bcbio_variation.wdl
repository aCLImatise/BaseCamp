version 1.0

task Bcbiovariation {
  input {
    String? analysis_type
    File? arg_file
    File? input_file
    Int? read_buffer_size
    String? phone_home
    File? g_atk_key
    String? tag
    String? read_filter
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
    String? baq
    String? baq_gap_open_penalty
    Boolean? refactor_ndn_cigar_string
    Boolean? fix_m_is_encoded_quality_scores
    Boolean? use_original_qualities
    String? default_base_qualities
    File? performance_log
    File? b_qsr
    Boolean? disable_in_del_quals
    Boolean? emit_original_quals
    String? preserve_q_scores_less_than
    String? global_q_score_prior
    String? validation_strictness
    Boolean? remove_program_records
    Boolean? keep_program_records
    String? unsafe
    Int? num_threads
    Int? num_cpu_threads_per_data_thread
    Boolean? monitor_thread_efficiency
    String? pedigree_string
    String? pedigree_validation_type
    String? variant_index_type
    String? variant_index_parameter
    String? logging_level
    Int? max_runtime
    String? jar
    String seed
    String to
    String scores
    String header
    String monitoring
    String simultaneously
    String tags
    String logging
    String annotator
    String beagle
    String annotations_dot
    String program_dot
    String callableloci_emits_file
    String compare_callable_loci
    String depth_of_coverage
    String gc_content_by_interval
    String diagnostics
    String errorratepercycle_compute_rate
    String read_group_properties
    String read_length_distribution
    String diff_engine
    String examples
    String fast_a
    String fast_a_reference_maker
    String fast_a_stats
    String filters
    String qc
    String count_bases
    String countintervals_count_contiguous
    String count_loci
    String count_males
    String count_read_events
    String count_reads
    String countrods_prints_counts
    String count_rods_by_ref
    String reference_dot
    String error_throwing
    String flag_stat
    String pile_up
    String print_rods
    String qc_ref
    String read_clipping_stats
    String read_utils
    String print_reads
    String read_adaptor_trimmer
    String splits_am_file
    String variant_eval
    String variant_utils
    String filter_lifted_variants
    String genotype_concordance
    String left_align_and_trim_variants
    String lift_over_variants
    String randomly_split_variants
    String select_headers
    String select_variants
    String validate_variants
    String variants_to_allelic_primitives
    String variants_to_binary_ped
    String variants_to_table
    String variants_to_vcf
    String variant_validation_assessor
    String vcf_walker
    String walkers
  }
  command <<<
    bcbio_variation \
      ~{seed} \
      ~{to} \
      ~{scores} \
      ~{header} \
      ~{monitoring} \
      ~{simultaneously} \
      ~{tags} \
      ~{logging} \
      ~{annotator} \
      ~{beagle} \
      ~{annotations_dot} \
      ~{program_dot} \
      ~{callableloci_emits_file} \
      ~{compare_callable_loci} \
      ~{depth_of_coverage} \
      ~{gc_content_by_interval} \
      ~{diagnostics} \
      ~{errorratepercycle_compute_rate} \
      ~{read_group_properties} \
      ~{read_length_distribution} \
      ~{diff_engine} \
      ~{examples} \
      ~{fast_a} \
      ~{fast_a_reference_maker} \
      ~{fast_a_stats} \
      ~{filters} \
      ~{qc} \
      ~{count_bases} \
      ~{countintervals_count_contiguous} \
      ~{count_loci} \
      ~{count_males} \
      ~{count_read_events} \
      ~{count_reads} \
      ~{countrods_prints_counts} \
      ~{count_rods_by_ref} \
      ~{reference_dot} \
      ~{error_throwing} \
      ~{flag_stat} \
      ~{pile_up} \
      ~{print_rods} \
      ~{qc_ref} \
      ~{read_clipping_stats} \
      ~{read_utils} \
      ~{print_reads} \
      ~{read_adaptor_trimmer} \
      ~{splits_am_file} \
      ~{variant_eval} \
      ~{variant_utils} \
      ~{filter_lifted_variants} \
      ~{genotype_concordance} \
      ~{left_align_and_trim_variants} \
      ~{lift_over_variants} \
      ~{randomly_split_variants} \
      ~{select_headers} \
      ~{select_variants} \
      ~{validate_variants} \
      ~{variants_to_allelic_primitives} \
      ~{variants_to_binary_ped} \
      ~{variants_to_table} \
      ~{variants_to_vcf} \
      ~{variant_validation_assessor} \
      ~{vcf_walker} \
      ~{walkers} \
      ~{if defined(analysis_type) then ("--analysis_type " +  '"' + analysis_type + '"') else ""} \
      ~{if defined(arg_file) then ("--arg_file " +  '"' + arg_file + '"') else ""} \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(read_buffer_size) then ("--read_buffer_size " +  '"' + read_buffer_size + '"') else ""} \
      ~{if defined(phone_home) then ("--phone_home " +  '"' + phone_home + '"') else ""} \
      ~{if defined(g_atk_key) then ("--gatk_key " +  '"' + g_atk_key + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(read_filter) then ("--read_filter " +  '"' + read_filter + '"') else ""} \
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
      ~{if defined(baq) then ("--baq " +  '"' + baq + '"') else ""} \
      ~{if defined(baq_gap_open_penalty) then ("--baqGapOpenPenalty " +  '"' + baq_gap_open_penalty + '"') else ""} \
      ~{if (refactor_ndn_cigar_string) then "--refactor_NDN_cigar_string" else ""} \
      ~{if (fix_m_is_encoded_quality_scores) then "--fix_misencoded_quality_scores" else ""} \
      ~{if (use_original_qualities) then "--useOriginalQualities" else ""} \
      ~{if defined(default_base_qualities) then ("--defaultBaseQualities " +  '"' + default_base_qualities + '"') else ""} \
      ~{if defined(performance_log) then ("--performanceLog " +  '"' + performance_log + '"') else ""} \
      ~{if defined(b_qsr) then ("--BQSR " +  '"' + b_qsr + '"') else ""} \
      ~{if (disable_in_del_quals) then "--disable_indel_quals" else ""} \
      ~{if (emit_original_quals) then "--emit_original_quals" else ""} \
      ~{if defined(preserve_q_scores_less_than) then ("--preserve_qscores_less_than " +  '"' + preserve_q_scores_less_than + '"') else ""} \
      ~{if defined(global_q_score_prior) then ("--globalQScorePrior " +  '"' + global_q_score_prior + '"') else ""} \
      ~{if defined(validation_strictness) then ("--validation_strictness " +  '"' + validation_strictness + '"') else ""} \
      ~{if (remove_program_records) then "--remove_program_records" else ""} \
      ~{if (keep_program_records) then "--keep_program_records" else ""} \
      ~{if defined(unsafe) then ("--unsafe " +  '"' + unsafe + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(num_cpu_threads_per_data_thread) then ("--num_cpu_threads_per_data_thread " +  '"' + num_cpu_threads_per_data_thread + '"') else ""} \
      ~{if (monitor_thread_efficiency) then "--monitorThreadEfficiency" else ""} \
      ~{if defined(pedigree_string) then ("--pedigreeString " +  '"' + pedigree_string + '"') else ""} \
      ~{if defined(pedigree_validation_type) then ("--pedigreeValidationType " +  '"' + pedigree_validation_type + '"') else ""} \
      ~{if defined(variant_index_type) then ("--variant_index_type " +  '"' + variant_index_type + '"') else ""} \
      ~{if defined(variant_index_parameter) then ("--variant_index_parameter " +  '"' + variant_index_parameter + '"') else ""} \
      ~{if defined(logging_level) then ("--logging_level " +  '"' + logging_level + '"') else ""} \
      ~{if defined(max_runtime) then ("-maxRuntime " +  '"' + max_runtime + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    analysis_type: "Name of the tool to run"
    arg_file: "Reads arguments from the\\nspecified file"
    input_file: "Input file containing sequence\\ndata (SAM or BAM)"
    read_buffer_size: "Number of reads per SAM file to\\nbuffer in memory"
    phone_home: "Run reporting mode (NO_ET|AWS|\\nSTDOUT)"
    g_atk_key: "GATK key file required to run\\nwith -et NO_ET"
    tag: "Tag to identify this GATK run\\nas part of a group of runs"
    read_filter: "Filters to apply to reads\\nbefore analysis"
    intervals: "One or more genomic intervals\\nover which to operate"
    exclude_intervals: "One or more genomic intervals\\nto exclude from processing"
    interval_set_rule: "Set merging approach to use for\\ncombining interval inputs\\n(UNION|INTERSECTION)"
    interval_merging: "Interval merging rule for\\nabutting intervals (ALL|\\nOVERLAPPING_ONLY)"
    interval_padding: "Amount of padding (in bp) to\\nadd to each interval"
    reference_sequence: "Reference sequence file"
    nondeterministic_random_seed: "Use a non-deterministic random"
    max_runtime_units: "Unit of time used by maxRuntime\\n(NANOSECONDS|MICROSECONDS|\\nMILLISECONDS|SECONDS|MINUTES|\\nHOURS|DAYS)"
    downsampling_type: "Type of read downsampling to\\nemploy at a given locus (NONE|\\nALL_READS|BY_SAMPLE)"
    down_sample_to_fraction: "Fraction of reads to downsample"
    baq: "Type of BAQ calculation to\\napply in the engine (OFF|\\nCALCULATE_AS_NECESSARY|\\nRECALCULATE)"
    baq_gap_open_penalty: "BAQ gap open penalty"
    refactor_ndn_cigar_string: "refactor cigar string with NDN\\nelements to one element"
    fix_m_is_encoded_quality_scores: "Fix mis-encoded base quality"
    use_original_qualities: "Use the base quality scores\\nfrom the OQ tag"
    default_base_qualities: "Assign a default base quality"
    performance_log: "Write GATK runtime performance\\nlog to this file"
    b_qsr: "Input covariates table file for\\non-the-fly base quality score\\nrecalibration"
    disable_in_del_quals: "Disable printing of base\\ninsertion and deletion tags\\n(with -BQSR)"
    emit_original_quals: "Emit the OQ tag with the\\noriginal base qualities (with\\n-BQSR)"
    preserve_q_scores_less_than: "Don't recalibrate bases with\\nquality scores less than this\\nthreshold (with -BQSR)"
    global_q_score_prior: "Global Qscore Bayesian prior to\\nuse for BQSR"
    validation_strictness: "How strict should we be with\\nvalidation (STRICT|LENIENT|\\nSILENT)"
    remove_program_records: "Remove program records from the\\nSAM header"
    keep_program_records: "Keep program records in the SAM"
    unsafe: "Enable unsafe operations:\\nnothing will be checked at\\nruntime (ALLOW_N_CIGAR_READS|\\nALLOW_UNINDEXED_BAM|\\nALLOW_UNSET_BAM_SORT_ORDER|\\nNO_READ_ORDER_VERIFICATION|\\nALLOW_SEQ_DICT_INCOMPATIBILITY|\\nLENIENT_VCF_PROCESSING|ALL)"
    num_threads: "Number of data threads to\\nallocate to this analysis"
    num_cpu_threads_per_data_thread: "Number of CPU threads to\\nallocate per data thread"
    monitor_thread_efficiency: "Enable threading efficiency"
    pedigree_string: "Pedigree string for samples"
    pedigree_validation_type: "Validation strictness for\\npedigree information (STRICT|\\nSILENT)"
    variant_index_type: "Type of IndexCreator to use for\\nVCF/BCF indices (DYNAMIC_SEEK|\\nDYNAMIC_SIZE|LINEAR|INTERVAL)"
    variant_index_parameter: "Parameter to pass to the\\nVCF/BCF IndexCreator"
    logging_level: "Set the minimum level of"
    max_runtime: ""
    jar: ""
    seed: "-maxRuntime,--maxRuntime <maxRuntime>                                                   Stop execution cleanly as soon "
    to: "-dcov,--downsample_to_coverage <downsample_to_coverage>                                 Target coverage threshold for "
    scores: "-allowPotentiallyMisencodedQuals,--allow_potentially_misencoded_quality_scores          Ignore warnings about base "
    header: "-sample_rename_mapping_file,--sample_rename_mapping_file <sample_rename_mapping_file>   Rename sample IDs on-the-fly at "
    monitoring: "-bfh,--num_bam_file_handles <num_bam_file_handles>                                      Total number of BAM file "
    simultaneously: "-rgbl,--read_group_black_list <read_group_black_list>                                   Exclude read groups based on "
    tags: "-ped,--pedigree <pedigree>                                                              Pedigree files for samples"
    logging: "-log,--log_to_file <log_to_file>                                                        Set the logging location"
    annotator: "VariantAnnotator              Annotates variant calls with context information."
    beagle: "BeagleOutputToVCF             Takes files produced by Beagle imputation engine and creates a vcf with modified "
    annotations_dot: "ProduceBeagleInput            Converts the input VCF into a format accepted by the Beagle imputation/analysis "
    program_dot: "VariantsToBeagleUnphased      Produces an input file to Beagle imputation engine, listing unphased, hard-called "
    callableloci_emits_file: "CallableLoci                  Emits a data file containing information about callable, uncallable, poorly mapped, and \\nother parts of the genome <p/>"
    compare_callable_loci: "Test routine for new VariantContext object"
    depth_of_coverage: "Assess sequence coverage by a wide array of metrics, partitioned by sample, read group, \\nor library"
    gc_content_by_interval: "Walks along reference and calculates the GC content for each interval."
    diagnostics: "CoveredByNSamplesSites        Print intervals file with all the variant sites for which most of the samples have good "
    errorratepercycle_compute_rate: "ErrorRatePerCycle             Compute the read error rate per position"
    read_group_properties: "Emits a GATKReport containing read group, sample, library, platform, center, sequencing \\ndata, paired end status, simple read type name (e.g."
    read_length_distribution: "Outputs the read lengths of all the reads in a file."
    diff_engine: "DiffObjects                   A generic engine for comparing tree-structured objects"
    examples: "GATKPaperGenotyper            A simple Bayesian genotyper, that outputs a text based call format."
    fast_a: "FastaAlternateReferenceMaker  Generates an alternative reference sequence over the specified interval."
    fast_a_reference_maker: "Renders a new reference in FASTA format consisting of only those loci provided in the \\ninput data set."
    fast_a_stats: "Calculate basic statistics about the reference sequence itself"
    filters: "VariantFiltration             Filters variant calls using a number of user-selectable, parameterizable criteria."
    qc: "CheckPileup                   Compare GATK's internal pileup to a reference Samtools pileup"
    count_bases: "Walks over the input data set, calculating the number of bases seen for diagnostic "
    countintervals_count_contiguous: "CountIntervals                Count contiguous regions in an interval list."
    count_loci: "Walks over the input data set, calculating the total number of covered loci for \\ndiagnostic purposes."
    count_males: "Walks over the input data set, calculating the number of reads seen from male samples \\nfor diagnostic purposes."
    count_read_events: "Walks over the input data set, counting the number of read events (from the CIGAR \\noperator)"
    count_reads: "Walks over the input data set, calculating the number of reads seen for diagnostic "
    countrods_prints_counts: "CountRODs                     Prints out counts of the number of reference ordered data objects encountered."
    count_rods_by_ref: "Prints out counts of the number of reference ordered data objects encountered along the "
    reference_dot: "CountTerminusEvent            Walks over the input data set, counting the number of reads ending in "
    error_throwing: "A walker that simply throws errors."
    flag_stat: "A reimplementation of the 'samtools flagstat' subcommand in the GATK"
    pile_up: "Emulates the samtools pileup command to print aligned reads"
    print_rods: "Prints out all of the RODs in the input data set."
    qc_ref: "Quality control for the reference fasta"
    read_clipping_stats: "Read clipping statistics for all reads."
    read_utils: "ClipReads                     Read clipping based on quality, position or sequence matching"
    print_reads: "Renders, in SAM/BAM format, all reads from the input data set in the order in which \\nthey appear in the input file."
    read_adaptor_trimmer: "Utility tool to blindly strip base adaptors."
    splits_am_file: "Divides the input data set into separate BAM files, one for each sample in the input \\ndata set."
    variant_eval: "VariantEval                   General-purpose tool for variant evaluation (% in dbSNP, genotype concordance, Ti/Tv \\nratios, and a lot more)"
    variant_utils: "CombineVariants               Combines VCF records from different sources."
    filter_lifted_variants: "Filters a lifted-over VCF file for ref bases that have been changed."
    genotype_concordance: "Genotype concordance (per-sample and aggregate counts and frequencies, NRD/NRS and site \\nallele overlaps) between two callsets"
    left_align_and_trim_variants: "Left-aligns indels from a variants file."
    lift_over_variants: "Lifts a VCF file over from one build to another."
    randomly_split_variants: "Takes a VCF file, randomly splits variants into two different sets, and outputs 2 new \\nVCFs with the results."
    select_headers: "Selects headers from a VCF source."
    select_variants: "Selects variants from a VCF source."
    validate_variants: "Validates a VCF file with an extra strict set of criteria."
    variants_to_allelic_primitives: "Takes alleles from a variants file and breaks them up (if possible) into more \\nbasic/primitive alleles."
    variants_to_binary_ped: "Converts a VCF file to a binary plink Ped file (.bed/.bim/.fam)"
    variants_to_table: "Emits specific fields from a VCF file to a tab-deliminated table"
    variants_to_vcf: "Converts variants from other file formats to VCF format."
    variant_validation_assessor: "Annotates a validation (from Sequenom for example) VCF with QC metrics (HW-equilibrium, \\n% failed probes)"
    vcf_walker: "VcfSimpleStatsWalker          "
    walkers: "LeftAlignVariants             "
  }
  output {
    File out_stdout = stdout()
  }
}