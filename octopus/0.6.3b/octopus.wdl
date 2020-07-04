version 1.0

task Octopus {
  input {
    String? config
    Boolean? debug
    Boolean? trace
    Boolean? fast
    Boolean? very_fast
    Boolean? arg_sets_directory
    Boolean? threads
    Boolean? arg_mb_maximum
    Boolean? arg_gb_none
    String? max_open_read_files
    String? target_working_memory
    String? temp_directory_prefix
    Boolean? arg_fasta_format
    Boolean? arg_spaceseparated_list_analysed
    Boolean? arg_files_containing
    Boolean? one_based_indexing
    Boolean? arg_list_regions
    Boolean? arg_file_containing
    Boolean? arg_spaceseparated_list_regions
    Boolean? arg_file_regions
    Boolean? arg_spaceseparated_sample
    Boolean? arg_file_analyse
    Boolean? ignore_unmapped_contigs
    String? pedigree
    Boolean? arg_file_where
    String? contig_output_order
    Boolean? sites_only
    Boolean? legacy
    String? re_genotype
    String? bam_out
    Boolean? full_bam_out
    String? data_profile
    String? read_filtering
    Boolean? consider_unmapped_reads
    String? min_mapping_quality
    String? good_base_quality
    Boolean? min_good_base_fraction
    String? min_good_bases
    Boolean? allow_qc_fails
    String? min_read_length
    String? max_read_length
    Boolean? allow_marked_duplicates
    Boolean? allow_octopus_duplicates
    Boolean? allow_secondary_alignments
    Boolean? allow_supplementary_alignments
    Boolean? no_reads_with_unmapped_segments
    Boolean? no_reads_with_distant_segments
    Boolean? no_adapter_contaminated_reads
    Boolean? disable_downsampling
    String? down_sample_above
    String? down_sample_target
    Boolean? arg_generation_from
    String? repeat_candidate_generator
    Boolean? arg_using_local
    Boolean? arg_variant_file
    String? source_candidates_file
    Boolean? min_source_quality
    String? use_filtered_source_candidates
    String? min_base_quality
    Boolean? min_supporting_reads
    String? max_variant_size
    String? km_er_sizes
    String? num_fall_back_km_ers
    String? fall_back_km_er_gap
    String? max_region_to_assemble
    String? max_assemble_region_overlap
    Boolean? assemble_all
    String? assembler_mask_base_quality
    String? min_km_er_prune
    String? max_bubbles
    String? min_bubble_score
    String? protect_reference_haplotype
    Boolean? arg_population_use
    Boolean? arg_contigs_unspecified
    Boolean? arg_y_chry
    String? contig_plo_i_dies_file
    String? min_variant_posterior
    Boolean? ref_call
    String? ref_call_block_merge_threshold
    String? min_ref_call_posterior
    Boolean? arg_germline_snp
    String? snp_heterozygosity_stdev
    Boolean? arg_germline_indel
    Boolean? use_uniform_genotype_priors
    String? max_genotypes
    String? max_joint_genotypes
    Boolean? use_independent_genotype_priors
    String? model_posterior
    String? inactive_flank_scoring
    String? model_mapping_quality
    String? sequence_error_model
    String? max_vb_seeds
    Boolean? arg_normal_level
    String? min_phase_score
    Boolean? arg_turn_call
    String? filter_expression
    String? somatic_filter_expression
    String? de_novo_filter_expression
    String? ref_call_filter_expression
    String? use_calling_reads_for_filtering
    Boolean? keep_unfiltered_calls
    Boolean? annotations
    String? filter_vcf
    String? forest_file
    String? somatic_forest_file
  }
  command <<<
    octopus \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--trace" false="" trace} \
      ~{true="--fast" false="" fast} \
      ~{true="--very-fast" false="" very_fast} \
      ~{true="-w" false="" arg_sets_directory} \
      ~{true="--threads" false="" threads} \
      ~{true="-X" false="" arg_mb_maximum} \
      ~{true="-B" false="" arg_gb_none} \
      ~{if defined(max_open_read_files) then ("--max-open-read-files " +  '"' + max_open_read_files + '"') else ""} \
      ~{if defined(target_working_memory) then ("--target-working-memory " +  '"' + target_working_memory + '"') else ""} \
      ~{if defined(temp_directory_prefix) then ("--temp-directory-prefix " +  '"' + temp_directory_prefix + '"') else ""} \
      ~{true="-R" false="" arg_fasta_format} \
      ~{true="-I" false="" arg_spaceseparated_list_analysed} \
      ~{true="-i" false="" arg_files_containing} \
      ~{true="--one-based-indexing" false="" one_based_indexing} \
      ~{true="-T" false="" arg_list_regions} \
      ~{true="-t" false="" arg_file_containing} \
      ~{true="-K" false="" arg_spaceseparated_list_regions} \
      ~{true="-k" false="" arg_file_regions} \
      ~{true="-S" false="" arg_spaceseparated_sample} \
      ~{true="-s" false="" arg_file_analyse} \
      ~{true="--ignore-unmapped-contigs" false="" ignore_unmapped_contigs} \
      ~{if defined(pedigree) then ("--pedigree " +  '"' + pedigree + '"') else ""} \
      ~{true="-o" false="" arg_file_where} \
      ~{if defined(contig_output_order) then ("--contig-output-order " +  '"' + contig_output_order + '"') else ""} \
      ~{true="--sites-only" false="" sites_only} \
      ~{true="--legacy" false="" legacy} \
      ~{if defined(re_genotype) then ("--regenotype " +  '"' + re_genotype + '"') else ""} \
      ~{if defined(bam_out) then ("--bamout " +  '"' + bam_out + '"') else ""} \
      ~{true="--full-bamout" false="" full_bam_out} \
      ~{if defined(data_profile) then ("--data-profile " +  '"' + data_profile + '"') else ""} \
      ~{if defined(read_filtering) then ("--read-filtering " +  '"' + read_filtering + '"') else ""} \
      ~{true="--consider-unmapped-reads" false="" consider_unmapped_reads} \
      ~{if defined(min_mapping_quality) then ("--min-mapping-quality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(good_base_quality) then ("--good-base-quality " +  '"' + good_base_quality + '"') else ""} \
      ~{true="--min-good-base-fraction" false="" min_good_base_fraction} \
      ~{if defined(min_good_bases) then ("--min-good-bases " +  '"' + min_good_bases + '"') else ""} \
      ~{true="--allow-qc-fails" false="" allow_qc_fails} \
      ~{if defined(min_read_length) then ("--min-read-length " +  '"' + min_read_length + '"') else ""} \
      ~{if defined(max_read_length) then ("--max-read-length " +  '"' + max_read_length + '"') else ""} \
      ~{true="--allow-marked-duplicates" false="" allow_marked_duplicates} \
      ~{true="--allow-octopus-duplicates" false="" allow_octopus_duplicates} \
      ~{true="--allow-secondary-alignments" false="" allow_secondary_alignments} \
      ~{true="--allow-supplementary-alignments" false="" allow_supplementary_alignments} \
      ~{true="--no-reads-with-unmapped-segments" false="" no_reads_with_unmapped_segments} \
      ~{true="--no-reads-with-distant-segments" false="" no_reads_with_distant_segments} \
      ~{true="--no-adapter-contaminated-reads" false="" no_adapter_contaminated_reads} \
      ~{true="--disable-downsampling" false="" disable_downsampling} \
      ~{if defined(down_sample_above) then ("--downsample-above " +  '"' + down_sample_above + '"') else ""} \
      ~{if defined(down_sample_target) then ("--downsample-target " +  '"' + down_sample_target + '"') else ""} \
      ~{true="-g" false="" arg_generation_from} \
      ~{if defined(repeat_candidate_generator) then ("--repeat-candidate-generator " +  '"' + repeat_candidate_generator + '"') else ""} \
      ~{true="-a" false="" arg_using_local} \
      ~{true="-c" false="" arg_variant_file} \
      ~{if defined(source_candidates_file) then ("--source-candidates-file " +  '"' + source_candidates_file + '"') else ""} \
      ~{true="--min-source-quality" false="" min_source_quality} \
      ~{if defined(use_filtered_source_candidates) then ("--use-filtered-source-candidates " +  '"' + use_filtered_source_candidates + '"') else ""} \
      ~{if defined(min_base_quality) then ("--min-base-quality " +  '"' + min_base_quality + '"') else ""} \
      ~{true="--min-supporting-reads" false="" min_supporting_reads} \
      ~{if defined(max_variant_size) then ("--max-variant-size " +  '"' + max_variant_size + '"') else ""} \
      ~{if defined(km_er_sizes) then ("--kmer-sizes " +  '"' + km_er_sizes + '"') else ""} \
      ~{if defined(num_fall_back_km_ers) then ("--num-fallback-kmers " +  '"' + num_fall_back_km_ers + '"') else ""} \
      ~{if defined(fall_back_km_er_gap) then ("--fallback-kmer-gap " +  '"' + fall_back_km_er_gap + '"') else ""} \
      ~{if defined(max_region_to_assemble) then ("--max-region-to-assemble " +  '"' + max_region_to_assemble + '"') else ""} \
      ~{if defined(max_assemble_region_overlap) then ("--max-assemble-region-overlap " +  '"' + max_assemble_region_overlap + '"') else ""} \
      ~{true="--assemble-all" false="" assemble_all} \
      ~{if defined(assembler_mask_base_quality) then ("--assembler-mask-base-quality " +  '"' + assembler_mask_base_quality + '"') else ""} \
      ~{if defined(min_km_er_prune) then ("--min-kmer-prune " +  '"' + min_km_er_prune + '"') else ""} \
      ~{if defined(max_bubbles) then ("--max-bubbles " +  '"' + max_bubbles + '"') else ""} \
      ~{if defined(min_bubble_score) then ("--min-bubble-score " +  '"' + min_bubble_score + '"') else ""} \
      ~{if defined(protect_reference_haplotype) then ("--protect-reference-haplotype " +  '"' + protect_reference_haplotype + '"') else ""} \
      ~{true="-C" false="" arg_population_use} \
      ~{true="-P" false="" arg_contigs_unspecified} \
      ~{true="-p" false="" arg_y_chry} \
      ~{if defined(contig_plo_i_dies_file) then ("--contig-ploidies-file " +  '"' + contig_plo_i_dies_file + '"') else ""} \
      ~{if defined(min_variant_posterior) then ("--min-variant-posterior " +  '"' + min_variant_posterior + '"') else ""} \
      ~{true="--refcall" false="" ref_call} \
      ~{if defined(ref_call_block_merge_threshold) then ("--refcall-block-merge-threshold " +  '"' + ref_call_block_merge_threshold + '"') else ""} \
      ~{if defined(min_ref_call_posterior) then ("--min-refcall-posterior " +  '"' + min_ref_call_posterior + '"') else ""} \
      ~{true="-z" false="" arg_germline_snp} \
      ~{if defined(snp_heterozygosity_stdev) then ("--snp-heterozygosity-stdev " +  '"' + snp_heterozygosity_stdev + '"') else ""} \
      ~{true="-y" false="" arg_germline_indel} \
      ~{true="--use-uniform-genotype-priors" false="" use_uniform_genotype_priors} \
      ~{if defined(max_genotypes) then ("--max-genotypes " +  '"' + max_genotypes + '"') else ""} \
      ~{if defined(max_joint_genotypes) then ("--max-joint-genotypes " +  '"' + max_joint_genotypes + '"') else ""} \
      ~{true="--use-independent-genotype-priors" false="" use_independent_genotype_priors} \
      ~{if defined(model_posterior) then ("--model-posterior " +  '"' + model_posterior + '"') else ""} \
      ~{if defined(inactive_flank_scoring) then ("--inactive-flank-scoring " +  '"' + inactive_flank_scoring + '"') else ""} \
      ~{if defined(model_mapping_quality) then ("--model-mapping-quality " +  '"' + model_mapping_quality + '"') else ""} \
      ~{if defined(sequence_error_model) then ("--sequence-error-model " +  '"' + sequence_error_model + '"') else ""} \
      ~{if defined(max_vb_seeds) then ("--max-vb-seeds " +  '"' + max_vb_seeds + '"') else ""} \
      ~{true="-l" false="" arg_normal_level} \
      ~{if defined(min_phase_score) then ("--min-phase-score " +  '"' + min_phase_score + '"') else ""} \
      ~{true="-f" false="" arg_turn_call} \
      ~{if defined(filter_expression) then ("--filter-expression " +  '"' + filter_expression + '"') else ""} \
      ~{if defined(somatic_filter_expression) then ("--somatic-filter-expression " +  '"' + somatic_filter_expression + '"') else ""} \
      ~{if defined(de_novo_filter_expression) then ("--denovo-filter-expression " +  '"' + de_novo_filter_expression + '"') else ""} \
      ~{if defined(ref_call_filter_expression) then ("--refcall-filter-expression " +  '"' + ref_call_filter_expression + '"') else ""} \
      ~{if defined(use_calling_reads_for_filtering) then ("--use-calling-reads-for-filtering " +  '"' + use_calling_reads_for_filtering + '"') else ""} \
      ~{true="--keep-unfiltered-calls" false="" keep_unfiltered_calls} \
      ~{true="--annotations" false="" annotations} \
      ~{if defined(filter_vcf) then ("--filter-vcf " +  '"' + filter_vcf + '"') else ""} \
      ~{if defined(forest_file) then ("--forest-file " +  '"' + forest_file + '"') else ""} \
      ~{if defined(somatic_forest_file) then ("--somatic-forest-file " +  '"' + somatic_forest_file + '"') else ""}
  >>>
  parameter_meta {
    config: "A config file, used to populate command line options"
    debug: "[=arg(=\"octopus_debug.log\")]  Writes verbose debug information to  debug.log in the working directory"
    trace: "[=arg(=\"octopus_trace.log\")]  Writes very verbose debug information  to trace.log in the working directory"
    fast: "Turns off some features to improve  runtime, at the cost of decreased  calling accuracy. Equivalent to '-a off -l minimal -x 50`"
    very_fast: "The same as fast but also disables  inactive flank scoring"
    arg_sets_directory: "[ --working-directory ] arg        Sets the working directory"
    threads: "[=arg(=0)]                  Maximum number of threads to be used,  enabling this option with no argument  lets the application decide the number  of threads ands enables specific  algorithm parallelisation"
    arg_mb_maximum: "[ --max-reference-cache-footprint ] arg (=500MB) Maximum memory footprint for cached  reference sequence"
    arg_gb_none: "[ --target-read-buffer-footprint ] arg (=6GB) None binding request to limit the  memory footprint of buffered read data"
    max_open_read_files: "(=250)      Limits the number of read files that  can be open simultaneously"
    target_working_memory: "Target working memory footprint for  analysis not including read or  reference footprint"
    temp_directory_prefix: "(=\"octopus-temp\") File name prefix of temporary directory for calling"
    arg_fasta_format: "[ --reference ] arg                FASTA format reference genome file to  be analysed. Target regions will be  extracted from the reference index if  not provded explicitly"
    arg_spaceseparated_list_analysed: "[ --reads ] arg                    Space-separated list of BAM/CRAM files  to be analysed. May be specified  multiple times"
    arg_files_containing: "[ --reads-file ] arg               Files containing lists of BAM/CRAM  files, one per line, to be analysed"
    one_based_indexing: "Notifies that input regions are given  using one based indexing rather than  zero based"
    arg_list_regions: "[ --regions ] arg                  Space-separated list of regions  (chrom:begin-end) to be analysed. May  be specified multiple times"
    arg_file_containing: "[ --regions-file ] arg             File containing a list of regions  (chrom:begin-end), one per line, to be  analysed"
    arg_spaceseparated_list_regions: "[ --skip-regions ] arg             Space-separated list of regions  (chrom:begin-end) to skip May be  specified multiple times"
    arg_file_regions: "[ --skip-regions-file ] arg        File of regions (chrom:begin-end), one  per line, to skip"
    arg_spaceseparated_sample: "[ --samples ] arg                  Space-separated list of sample names to analyse"
    arg_file_analyse: "[ --samples-file ] arg             File of sample names to analyse, one  per line, which must be a subset of the samples that appear in the read files"
    ignore_unmapped_contigs: "Ignore any contigs that are not present in the read files"
    pedigree: "PED file containing sample pedigree"
    arg_file_where: "[ --output ] arg                   File to where output is written. If  unspecified, calls are written to  stdout"
    contig_output_order: "(=asInReferenceIndex) The order contigs should be written to  the output"
    sites_only: "Only reports call sites (i.e. without  sample genotype information)"
    legacy: "Outputs a legacy version of the final  callset in addition to the native  version"
    re_genotype: "VCF file specifying calls to  regenotype, only sites in this files  will appear in the final output"
    bam_out: "Output realigned BAM files"
    full_bam_out: "Output all reads when producing  realigned bam outputs rather than just  variant read minibams"
    data_profile: "Output a profile of polymorphisms and  errors found in the data"
    read_filtering: "(=1)             Enable all read filters"
    consider_unmapped_reads: "Allows reads marked as unmapped to be  used for calling"
    min_mapping_quality: "(=20)       Minimum read mapping quality required  to consider a read for calling"
    good_base_quality: "(=20)         Base quality threshold used by  min-good-bases and min-good-base-fracti on filters"
    min_good_base_fraction: "[=arg(=0.5)] Base quality threshold used by  min-good-bases filter"
    min_good_bases: "(=20)            Minimum number of bases with quality  min-base-quality before read is  considered"
    allow_qc_fails: "Filters reads marked as QC failed"
    min_read_length: "Filters reads shorter than this"
    max_read_length: "Filter reads longer than this"
    allow_marked_duplicates: "Allows reads marked as duplicate in  alignment record"
    allow_octopus_duplicates: "Allows reads considered duplicates by  octopus"
    allow_secondary_alignments: "Allows reads marked as secondary  alignments"
    allow_supplementary_alignments: "Allows reads marked as supplementary  alignments"
    no_reads_with_unmapped_segments: "Filter reads with unmapped template  segments to be used for calling"
    no_reads_with_distant_segments: "Filter reads with template segments  that are on different contigs"
    no_adapter_contaminated_reads: "Filter reads with possible adapter  contamination"
    disable_downsampling: "Disables downsampling"
    down_sample_above: "(=1000)        Downsample reads in regions where  coverage is over this"
    down_sample_target: "(=500)        The target coverage for the downsampler"
    arg_generation_from: "[ --raw-cigar-candidate-generator ] arg (=1) Enable candidate generation from raw  read alignments (CIGAR strings)"
    repeat_candidate_generator: "(=1) Enable candidate generation from  adjusted read alignments (CIGAR  strings) around tandem repeats"
    arg_using_local: "[ --assembly-candidate-generator ] arg (=1) Enable candidate generation using local re-assembly"
    arg_variant_file: "[ --source-candidates ] arg        Variant file paths containing known  variants. These variants will  automatically become candidates"
    source_candidates_file: "Files containing lists of source  candidate variant files"
    min_source_quality: "[=arg(=2)]       Only variants with quality above this  value are considered for candidate  generation"
    use_filtered_source_candidates: "(=0) Use variants from source VCF records  that have been filtered"
    min_base_quality: "(=20)          Only bases with quality above this  value are considered for candidate  generation"
    min_supporting_reads: "[=arg(=2)]     Minimum number of reads that must  support a variant if it is to be  considered a candidate. By default  octopus will automatically determine  this value"
    max_variant_size: "(=2000)        Maximum candidate variant size to  consider (in region space)"
    km_er_sizes: "(=10 15 20)          Kmer sizes to use for local assembly"
    num_fall_back_km_ers: "(=10)        How many local assembly fallback kmer  sizes to use if the default sizes fail"
    fall_back_km_er_gap: "(=10)         The gap size used to generate local  assembly fallback kmers"
    max_region_to_assemble: "(=400)   The maximum region size that can be  used for local assembly"
    max_assemble_region_overlap: "(=200) The maximum number of bases allowed to  overlap assembly regions"
    assemble_all: "Forces all regions to be assembled"
    assembler_mask_base_quality: "(=10) Aligned bases with quality less than  this will be converted to reference  before being inserted into the De  Bruijn graph"
    min_km_er_prune: "(=2)             Minimum number of read observations to  keep a kmer in the assembly graph  before bubble extraction"
    max_bubbles: "(=30)               Maximum number of bubbles to extract  from the assembly graph"
    min_bubble_score: "(=2)           Minimum bubble score that will be  extracted from the assembly graph"
    protect_reference_haplotype: "(=1) Protect the reference haplotype from  filtering"
    arg_population_use: "[ --caller ] arg (=population)     Which of the octopus callers to use"
    arg_contigs_unspecified: "[ --organism-ploidy ] arg (=2)     All contigs with unspecified ploidies  are assumed the organism ploidy"
    arg_y_chry: "[ --contig-ploidies ] arg (=Y=1 chrY=1 MT=1 chrM=1) Space-separated list of contig  (contig=ploidy) or sample contig  (sample:contig=ploidy) ploidies"
    contig_plo_i_dies_file: "File containing a list of contig  (contig=ploidy) or sample contig  (sample:contig=ploidy) ploidies, one  per line"
    min_variant_posterior: "(=1)      Report variant alleles with posterior  probability (phred scale) greater than  this"
    ref_call: "[=arg(=blocked)]            Caller will report reference confidence calls for each position (positional),  or in automatically sized blocks  (blocked)"
    ref_call_block_merge_threshold: "(=10) Threshold to merge adjacent refcall  positions when using blocked refcalling"
    min_ref_call_posterior: "(=2)      Report reference alleles with posterior probability (phred scale) greater than  this"
    arg_germline_snp: "[ --snp-heterozygosity ] arg (=0.001) Germline SNP heterozygosity for the  given samples"
    snp_heterozygosity_stdev: "(=0.01) Standard deviation of the germline SNP  heterozygosity used for the given  samples"
    arg_germline_indel: "[ --indel-heterozygosity ] arg (=0.0001) Germline indel heterozygosity for the  given samples"
    use_uniform_genotype_priors: "Use a uniform prior model when  calculating genotype posteriors"
    max_genotypes: "(=5000)           The maximum number of genotypes to  evaluate"
    max_joint_genotypes: "(=1000000)  The maximum number of joint genotype  vectors to consider when computing  joint genotype posterior probabilities"
    use_independent_genotype_priors: "Use independent genotype priors for  joint calling"
    model_posterior: "Calculate model posteriors for every  call"
    inactive_flank_scoring: "(=1)     Disables additional calculation to  adjust alignment score when there are  inactive candidates in haplotype  flanking regions"
    model_mapping_quality: "(=1)      Include the read mapping quality in the haplotype likelihood calculation"
    sequence_error_model: "(=PCR-free.HiSeq-2500) The sequencer error model to use"
    max_vb_seeds: "(=12)              Maximum number of seeds to use for  Variational Bayes algorithms"
    arg_normal_level: "[ --phasing-level ] arg (=normal)  Level of phasing - longer range phasing can improve calling accuracy at the  cost of runtime speed. Possible values  are: minimal, conservative, moderate,  normal, aggressive"
    min_phase_score: "(=10)           Minimum phase score (phred scale)  required to report sites as phased"
    arg_turn_call: "[ --call-filtering ] arg (=1)      Turn variant call filtering on or off"
    filter_expression: "(=QUAL < 10 | MQ < 10 | MP < 10 | AF < 0.05 | SB > 0.98 | BQ < 15 | DP < 1) Boolean expression to use to filter  variant calls"
    somatic_filter_expression: "(=QUAL < 2 | GQ < 20 | MQ < 30 | SMQ < 40 | SB > 0.9 | SD > 0.9 | BQ < 20 | DP < 3 | MF > 0.2 | NC > 1 | FRF > 0.5) Boolean expression to use to filter  somatic variant calls"
    de_novo_filter_expression: "(=QUAL < 50 | PP < 40 | GQ < 20 | MQ < 30 | AF < 0.1 | SB > 0.95 | BQ < 20 | DP < 10 | DC > 1 | MF > 0.2 | FRF > 0.5 | MP < 30 | MQ0 > 2) Boolean expression to use to filter  somatic variant calls"
    ref_call_filter_expression: "(=QUAL < 2 | GQ < 20 | MQ < 10 | DP < 10 | MF > 0.2) Boolean expression to use to filter  homozygous reference calls"
    use_calling_reads_for_filtering: "(=0) Use the original reads used for variant calling for filtering"
    keep_unfiltered_calls: "Keep a copy of unfiltered calls"
    annotations: "[=arg(=active)]         Annotations to write to final VCF"
    filter_vcf: "Filter the given Octopus VCF without  calling"
    forest_file: "Trained Ranger random forest file"
    somatic_forest_file: "Trained Ranger random forest file for  somatic variants"
  }
}