version 1.0

task GatkFramework {
  input {
    String? analysis_type
    String? arg_file
    String? input_file
    Boolean? show_full_bam_list
    String? read_buffer_size
    String? read_filter
    String? disable_read_filter
    Int? intervals
    String? exclude_intervals
    Int? interval_set_rule
    Int? interval_merging
    Int? interval_padding
    String? reference_sequence
    Boolean? nondeterministic_random_seed
    Int? max_runtime
    Int? max_runtime_units
    String? downsampling_type
    String? down_sample_to_fraction
    String? down_sample_to_coverage
    String? baq
    String? baq_gap_open_penalty
    Boolean? refactor_ndn_cigar_string
    Boolean? fix_m_is_encoded_quality_scores
    Boolean? allow_potentially_m_is_encoded_quality_scores
    Boolean? use_original_qualities
    String? default_base_qualities
    String? performance_log
    String? b_qsr
    String? quantize_quals
    String? static_quantized_quals
    Boolean? disable_in_del_quals
    Boolean? emit_original_quals
    String? preserve_q_scores_less_than
    String? global_q_score_prior
    String? validation_strictness
    Boolean? remove_program_records
    Boolean? keep_program_records
    String? sample_rename_mapping_file
    String? unsafe
    Boolean? sites_only
    Boolean? never_trim_vcf_format_field
    String? bam_compression
    Boolean? simplify_bam
    Boolean? disable_bam_indexing
    Boolean? generate_md_five
    String? num_threads
    String? num_cpu_threads_per_data_thread
    Boolean? monitor_thread_efficiency
    String? read_group_black_list
    String? pedigree
    String? pedigree_string
    String? pedigree_validation_type
    String? variant_index_type
    String? variant_index_parameter
    String? reference_window_stop
    String? logging_level
    String? log_to_file
    String? jar
    String annotator
    String coverage
    String da_kl
    String diagnostics
    String diff_engine
    String examples
    String fast_a
    String filters
    String indels
    String qc
    String read_utils
    String rnase_q
    String variant_eval
    String variant_utils
  }
  command <<<
    gatk-framework \
      ~{annotator} \
      ~{coverage} \
      ~{da_kl} \
      ~{diagnostics} \
      ~{diff_engine} \
      ~{examples} \
      ~{fast_a} \
      ~{filters} \
      ~{indels} \
      ~{qc} \
      ~{read_utils} \
      ~{rnase_q} \
      ~{variant_eval} \
      ~{variant_utils} \
      ~{if defined(analysis_type) then ("--analysis_type " +  '"' + analysis_type + '"') else ""} \
      ~{if defined(arg_file) then ("--arg_file " +  '"' + arg_file + '"') else ""} \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{true="--showFullBamList" false="" show_full_bam_list} \
      ~{if defined(read_buffer_size) then ("--read_buffer_size " +  '"' + read_buffer_size + '"') else ""} \
      ~{if defined(read_filter) then ("--read_filter " +  '"' + read_filter + '"') else ""} \
      ~{if defined(disable_read_filter) then ("--disable_read_filter " +  '"' + disable_read_filter + '"') else ""} \
      ~{if defined(intervals) then ("--intervals " +  '"' + intervals + '"') else ""} \
      ~{if defined(exclude_intervals) then ("--excludeIntervals " +  '"' + exclude_intervals + '"') else ""} \
      ~{if defined(interval_set_rule) then ("--interval_set_rule " +  '"' + interval_set_rule + '"') else ""} \
      ~{if defined(interval_merging) then ("--interval_merging " +  '"' + interval_merging + '"') else ""} \
      ~{if defined(interval_padding) then ("--interval_padding " +  '"' + interval_padding + '"') else ""} \
      ~{if defined(reference_sequence) then ("--reference_sequence " +  '"' + reference_sequence + '"') else ""} \
      ~{true="--nonDeterministicRandomSeed" false="" nondeterministic_random_seed} \
      ~{if defined(max_runtime) then ("--maxRuntime " +  '"' + max_runtime + '"') else ""} \
      ~{if defined(max_runtime_units) then ("--maxRuntimeUnits " +  '"' + max_runtime_units + '"') else ""} \
      ~{if defined(downsampling_type) then ("--downsampling_type " +  '"' + downsampling_type + '"') else ""} \
      ~{if defined(down_sample_to_fraction) then ("--downsample_to_fraction " +  '"' + down_sample_to_fraction + '"') else ""} \
      ~{if defined(down_sample_to_coverage) then ("--downsample_to_coverage " +  '"' + down_sample_to_coverage + '"') else ""} \
      ~{if defined(baq) then ("--baq " +  '"' + baq + '"') else ""} \
      ~{if defined(baq_gap_open_penalty) then ("--baqGapOpenPenalty " +  '"' + baq_gap_open_penalty + '"') else ""} \
      ~{true="--refactor_NDN_cigar_string" false="" refactor_ndn_cigar_string} \
      ~{true="--fix_misencoded_quality_scores" false="" fix_m_is_encoded_quality_scores} \
      ~{true="--allow_potentially_misencoded_quality_scores" false="" allow_potentially_m_is_encoded_quality_scores} \
      ~{true="--useOriginalQualities" false="" use_original_qualities} \
      ~{if defined(default_base_qualities) then ("--defaultBaseQualities " +  '"' + default_base_qualities + '"') else ""} \
      ~{if defined(performance_log) then ("--performanceLog " +  '"' + performance_log + '"') else ""} \
      ~{if defined(b_qsr) then ("--BQSR " +  '"' + b_qsr + '"') else ""} \
      ~{if defined(quantize_quals) then ("--quantize_quals " +  '"' + quantize_quals + '"') else ""} \
      ~{if defined(static_quantized_quals) then ("--static_quantized_quals " +  '"' + static_quantized_quals + '"') else ""} \
      ~{true="--disable_indel_quals" false="" disable_in_del_quals} \
      ~{true="--emit_original_quals" false="" emit_original_quals} \
      ~{if defined(preserve_q_scores_less_than) then ("--preserve_qscores_less_than " +  '"' + preserve_q_scores_less_than + '"') else ""} \
      ~{if defined(global_q_score_prior) then ("--globalQScorePrior " +  '"' + global_q_score_prior + '"') else ""} \
      ~{if defined(validation_strictness) then ("--validation_strictness " +  '"' + validation_strictness + '"') else ""} \
      ~{true="--remove_program_records" false="" remove_program_records} \
      ~{true="--keep_program_records" false="" keep_program_records} \
      ~{if defined(sample_rename_mapping_file) then ("--sample_rename_mapping_file " +  '"' + sample_rename_mapping_file + '"') else ""} \
      ~{if defined(unsafe) then ("--unsafe " +  '"' + unsafe + '"') else ""} \
      ~{true="--sites_only" false="" sites_only} \
      ~{true="--never_trim_vcf_format_field" false="" never_trim_vcf_format_field} \
      ~{if defined(bam_compression) then ("--bam_compression " +  '"' + bam_compression + '"') else ""} \
      ~{true="--simplifyBAM" false="" simplify_bam} \
      ~{true="--disable_bam_indexing" false="" disable_bam_indexing} \
      ~{true="--generate_md5" false="" generate_md_five} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(num_cpu_threads_per_data_thread) then ("--num_cpu_threads_per_data_thread " +  '"' + num_cpu_threads_per_data_thread + '"') else ""} \
      ~{true="--monitorThreadEfficiency" false="" monitor_thread_efficiency} \
      ~{if defined(read_group_black_list) then ("--read_group_black_list " +  '"' + read_group_black_list + '"') else ""} \
      ~{if defined(pedigree) then ("--pedigree " +  '"' + pedigree + '"') else ""} \
      ~{if defined(pedigree_string) then ("--pedigreeString " +  '"' + pedigree_string + '"') else ""} \
      ~{if defined(pedigree_validation_type) then ("--pedigreeValidationType " +  '"' + pedigree_validation_type + '"') else ""} \
      ~{if defined(variant_index_type) then ("--variant_index_type " +  '"' + variant_index_type + '"') else ""} \
      ~{if defined(variant_index_parameter) then ("--variant_index_parameter " +  '"' + variant_index_parameter + '"') else ""} \
      ~{if defined(reference_window_stop) then ("--reference_window_stop " +  '"' + reference_window_stop + '"') else ""} \
      ~{if defined(logging_level) then ("--logging_level " +  '"' + logging_level + '"') else ""} \
      ~{if defined(log_to_file) then ("--log_to_file " +  '"' + log_to_file + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    analysis_type: "Name of the tool to run"
    arg_file: "Reads arguments from the  specified file"
    input_file: "Input file containing sequence  data (BAM or CRAM)"
    show_full_bam_list: "Emit list of input BAM/CRAM  files to log"
    read_buffer_size: "Number of reads per SAM file  to buffer in memory"
    read_filter: "Filters to apply to reads  before analysis"
    disable_read_filter: "Read filters to disable"
    intervals: "One or more genomic intervals  over which to operate"
    exclude_intervals: "One or more genomic intervals  to exclude from processing"
    interval_set_rule: "Set merging approach to use  for combining interval inputs  (UNION|INTERSECTION)"
    interval_merging: "Interval merging rule for  abutting intervals (ALL| OVERLAPPING_ONLY)"
    interval_padding: "Amount of padding (in bp) to  add to each interval"
    reference_sequence: "Reference sequence file"
    nondeterministic_random_seed: "Use a non-deterministic random  seed"
    max_runtime: "Stop execution cleanly as soon  as maxRuntime has been reached"
    max_runtime_units: "Unit of time used by  maxRuntime (NANOSECONDS| MICROSECONDS|MILLISECONDS| SECONDS|MINUTES|HOURS|DAYS)"
    downsampling_type: "Type of read downsampling to  employ at a given locus (NONE| ALL_READS|BY_SAMPLE)"
    down_sample_to_fraction: "Fraction of reads to  downsample to"
    down_sample_to_coverage: "Target coverage threshold for  downsampling to coverage"
    baq: "Type of BAQ calculation to  apply in the engine (OFF| CALCULATE_AS_NECESSARY| RECALCULATE)"
    baq_gap_open_penalty: "BAQ gap open penalty"
    refactor_ndn_cigar_string: "Reduce NDN elements in CIGAR  string"
    fix_m_is_encoded_quality_scores: "Fix mis-encoded base quality  scores"
    allow_potentially_m_is_encoded_quality_scores: "Ignore warnings about base  quality score encoding"
    use_original_qualities: "Use the base quality scores  from the OQ tag"
    default_base_qualities: "Assign a default base quality"
    performance_log: "Write GATK runtime performance  log to this file"
    b_qsr: "Input covariates table file  for on-the-fly base quality  score recalibration"
    quantize_quals: "Quantize quality scores to a  given number of levels (with  -BQSR)"
    static_quantized_quals: "Use static quantized quality  scores to a given number of  levels (with -BQSR)"
    disable_in_del_quals: "Disable printing of base  insertion and deletion tags  (with -BQSR)"
    emit_original_quals: "Emit the OQ tag with the  original base qualities (with  -BQSR)"
    preserve_q_scores_less_than: "Don't recalibrate bases with  quality scores less than this  threshold (with -BQSR)"
    global_q_score_prior: "Global Qscore Bayesian prior  to use for BQSR"
    validation_strictness: "How strict should we be with  validation (STRICT|LENIENT| SILENT)"
    remove_program_records: "Remove program records from  the SAM header"
    keep_program_records: "Keep program records in the  SAM header"
    sample_rename_mapping_file: "Rename sample IDs on-the-fly  at runtime using the provided  mapping file"
    unsafe: "Enable unsafe operations:  nothing will be checked at  runtime (ALLOW_N_CIGAR_READS| ALLOW_UNINDEXED_BAM| ALLOW_UNSET_BAM_SORT_ORDER| NO_READ_ORDER_VERIFICATION| ALLOW_SEQ_DICT_INCOMPATIBILITY| LENIENT_VCF_PROCESSING|ALL)"
    sites_only: "Output sites-only VCF"
    never_trim_vcf_format_field: "Always output all the records  in VCF FORMAT fields, even if  some are missing"
    bam_compression: "Compression level to use for  writing BAM files (0 - 9,  higher is more compressed)"
    simplify_bam: "Strip down read content and  tags"
    disable_bam_indexing: "Turn off on-the-fly creation  of indices for output BAM/CRAM  files"
    generate_md_five: "Enable on-the-fly creation of  md5s for output BAM files."
    num_threads: "Number of data threads to  allocate to this analysis"
    num_cpu_threads_per_data_thread: "Number of CPU threads to  allocate per data thread"
    monitor_thread_efficiency: "Enable threading efficiency  monitoring"
    read_group_black_list: "Exclude read groups based on  tags"
    pedigree: "Pedigree files for samples"
    pedigree_string: "Pedigree string for samples"
    pedigree_validation_type: "Validation strictness for  pedigree (STRICT|SILENT)"
    variant_index_type: "Type of IndexCreator to use  for VCF/BCF indices  (DYNAMIC_SEEK|DYNAMIC_SIZE| LINEAR|INTERVAL)"
    variant_index_parameter: "Parameter to pass to the  VCF/BCF IndexCreator"
    reference_window_stop: "Reference window stop"
    logging_level: "Set the minimum level of  logging"
    log_to_file: "Set the logging location"
    jar: ""
    annotator: "VariantAnnotator              Annotate variant calls with context information"
    coverage: "CallableLoci                  Collect statistics on callable, uncallable, poorly mapped, and other parts of the  genome CompareCallableLoci           Compare callability statistics DepthOfCoverage               Assess sequence coverage by a wide array of metrics, partitioned by sample, read group,  or library GCContentByInterval           Calculates the GC content of the reference sequence for each interval"
    da_kl: "SomaticPindelFilter           Filters pindel output based on coverage and Fisher's exact test (BH corrected)."
    diagnostics: "ErrorRatePerCycle             Compute the read error rate per position ReadGroupProperties           Collect statistics about read groups and their properties ReadLengthDistribution        Collect read length statistics"
    diff_engine: "DiffObjects                   A generic engine for comparing tree-structured objects"
    examples: "GATKPaperGenotyper            Simple Bayesian genotyper used in the original GATK paper"
    fast_a: "FastaAlternateReferenceMaker  Generate an alternative reference sequence over the specified interval FastaReferenceMaker           Create a subset of a FASTA reference sequence FastaStats                    Calculate basic statistics about the reference sequence itself"
    filters: "VariantFiltration             Filter variant calls based on INFO and FORMAT annotations"
    indels: "IndelRealigner                Perform local realignment of reads around indels LeftAlignIndels               Left-align indels within reads in a bam file RealignerTargetCreator        Define intervals to target for local realignment"
    qc: "CheckPileup                   Compare GATK's internal pileup to a reference Samtools pileup CountBases                    Count the number of bases in a set of reads CountIntervals                Count contiguous regions in an interval list CountLoci                     Count the total number of covered loci CountMales                    Count the number of reads seen from male samples CountReadEvents               Count the number of read events CountReads                    Count the number of reads CountRODs                     Count the number of ROD objects encountered CountRODsByRef                Count the number of ROD objects encountered along the reference CountTerminusEvent            Count the number of reads ending in insertions, deletions or soft-clips ErrorThrowing                 A walker that simply throws errors. FlagStat                      Collect statistics about sequence reads based on their SAM flags Pileup                        Print read alignments in Pileup-style format PrintRODs                     Print out all of the RODs in the input data set QCRef                         Quality control for the reference fasta ReadClippingStats             Collect read clipping statistics"
    read_utils: "ClipReads                     Read clipping based on quality, position or sequence matching PrintReads                    Write out sequence read data (for filtering, merging, subsetting etc) SplitSamFile                  Split a BAM file by sample"
    rnase_q: "ASEReadCounter                Calculate read counts per allele for allele-specific expression analysis"
    variant_eval: "VariantEval                   General-purpose tool for variant evaluation (% in dbSNP, genotype concordance, Ti/Tv  ratios, and a lot more)"
    variant_utils: "CombineVariants               Combine variant records from different sources GenotypeConcordance           Genotype concordance between two callsets LeftAlignAndTrimVariants      Left-align indels in a variant callset RandomlySplitVariants         Randomly split variants into different sets SelectHeaders                 Selects headers from a VCF source SelectVariants                Select a subset of variants from a larger callset ValidateVariants              Validate a VCF file with an extra strict set of criteria VariantsToAllelicPrimitives   Simplify multi-nucleotide variants (MNPs) into more basic/primitive alleles. VariantsToBinaryPed           Convert VCF to binary pedigree file VariantsToTable               Extract specific fields from a VCF file to a tab-delimited table VariantsToVCF                 Convert variants from other file formats to VCF format"
  }
}