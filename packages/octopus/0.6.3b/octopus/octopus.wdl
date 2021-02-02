version 1.0

task Octopus {
  input {
    File? config
    Boolean? debug
    Boolean? trace
    Boolean? fast
    Boolean? very_fast
    Boolean? arg_sets_directory
    Boolean? threads
    Boolean? arg_mbmaximum_memory
    Boolean? arg_gbnone_binding
    Int? max_open_read_files
    String? target_working_memory
    Directory? temp_directory_prefix
    Boolean? arg_fasta_format
    Boolean? arg_spaceseparated_list_bamcram
    Boolean? arg_files_containing
    Boolean? one_based_indexing
    Boolean? arg_spaceseparated_regionschrombeginend
    Boolean? arg_file_containing
    Boolean? arg_spaceseparated_list_skip
    Boolean? arg_file_regions
    Boolean? arg_spaceseparated_sample
    Boolean? ignore_unmapped_contigs
    File? pedigree
    File? arg_file_where
    String? contig_output_order
    Boolean? sites_only
    Boolean? legacy
    File? re_genotype
    String? bam_out
    Boolean? full_bam_out
    String? data_profile
    Int? read_transforms
    Boolean? mask_low_quality_tails
    Boolean? mask_tails
    Int? soft_clip_masking
    Int? mask_soft_clipped_boundary_bases
    Int? adapter_masking
    Int? overlap_masking
    Int? mask_inverted_soft_clipping
    Int? mask_three_prime_shifted_soft_clipped_heads
    Int? read_filtering
    Boolean? consider_unmapped_reads
    Int? min_mapping_quality
    Int? good_base_quality
    Boolean? min_good_base_fraction
    Int? min_good_bases
    Boolean? allow_qc_fails
    Int? min_read_length
    Int? max_read_length
    Boolean? allow_marked_duplicates
    Boolean? allow_octopus_duplicates
    Boolean? no_reads_with_distant_segments
    Boolean? no_adapter_contaminated_reads
    Int? down_sample_above
    Int? down_sample_target
    Boolean? arg_enable_candidate_generation_rawread
    Int? repeat_candidate_generator
    Boolean? arg_enable_candidate_generation_using
    Boolean? arg_variant_paths
    File? source_candidates_file
    Boolean? min_source_quality
    Int? use_filtered_source_candidates
    Int? min_base_quality
    Boolean? min_supporting_reads
    Int? max_variant_size
    Int? km_er_sizes
    Int? num_fall_back_km_ers
    Int? fall_back_km_er_gap
    Int? max_region_to_assemble
    Int? max_assemble_region_overlap
    Boolean? assemble_all
    Int? assembler_mask_base_quality
    Int? min_km_er_prune
    Int? max_bubbles
    Int? min_bubble_score
    Boolean? arg_maximum_number
    Int? haplotype_hold_out_threshold
    Int? haplotype_overflow
    Int? max_hold_out_depth
    String? extension_level
    Boolean? arg_haplotypes_filtered
    Int? ded_up_haplotypes_with_prior_model
    Int? protect_reference_haplotype
    Boolean? arg_population_use
    Boolean? arg_contigs_unspecified
    Boolean? arg_y_mt
    File? contig_plo_i_dies_file
    Int? min_variant_posterior
    Boolean? ref_call
    Int? ref_call_block_merge_threshold
    Int? min_ref_call_posterior
    Boolean? arg_snp_heterozygosity
    Float? snp_heterozygosity_stdev
    Boolean? arg_germline_indel
    Boolean? use_uniform_genotype_priors
    Int? max_genotypes
    Boolean? use_independent_genotype_priors
    String? model_posterior
    Int? model_mapping_quality
    Int? sequence_error_model
    Int? max_vb_seeds
    Boolean? arg_normal_level
    Int? min_phase_score
    Boolean? arg_turn_filtering
    Boolean? filter_expression
    Boolean? somatic_filter_expression
    Boolean? de_novo_filter_expression
    Boolean? ref_call_filter_expression
    Int? use_calling_reads_for_filtering
    Boolean? keep_unfiltered_calls
    Boolean? annotations
    String? filter_vcf
    File? somatic_forest_file
    String analyse
    String recalibration
    String octopus
    String contamination
    String evaluate
    String _inactiveflankscoring_arg
    String calling
  }
  command <<<
    octopus \
      ~{analyse} \
      ~{recalibration} \
      ~{octopus} \
      ~{contamination} \
      ~{evaluate} \
      ~{_inactiveflankscoring_arg} \
      ~{calling} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (trace) then "--trace" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (very_fast) then "--very-fast" else ""} \
      ~{if (arg_sets_directory) then "-w" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (arg_mbmaximum_memory) then "-X" else ""} \
      ~{if (arg_gbnone_binding) then "-B" else ""} \
      ~{if defined(max_open_read_files) then ("--max-open-read-files " +  '"' + max_open_read_files + '"') else ""} \
      ~{if defined(target_working_memory) then ("--target-working-memory " +  '"' + target_working_memory + '"') else ""} \
      ~{if defined(temp_directory_prefix) then ("--temp-directory-prefix " +  '"' + temp_directory_prefix + '"') else ""} \
      ~{if (arg_fasta_format) then "-R" else ""} \
      ~{if (arg_spaceseparated_list_bamcram) then "-I" else ""} \
      ~{if (arg_files_containing) then "-i" else ""} \
      ~{if (one_based_indexing) then "--one-based-indexing" else ""} \
      ~{if (arg_spaceseparated_regionschrombeginend) then "-T" else ""} \
      ~{if (arg_file_containing) then "-t" else ""} \
      ~{if (arg_spaceseparated_list_skip) then "-K" else ""} \
      ~{if (arg_file_regions) then "-k" else ""} \
      ~{if (arg_spaceseparated_sample) then "-S" else ""} \
      ~{if (ignore_unmapped_contigs) then "--ignore-unmapped-contigs" else ""} \
      ~{if defined(pedigree) then ("--pedigree " +  '"' + pedigree + '"') else ""} \
      ~{if (arg_file_where) then "-o" else ""} \
      ~{if defined(contig_output_order) then ("--contig-output-order " +  '"' + contig_output_order + '"') else ""} \
      ~{if (sites_only) then "--sites-only" else ""} \
      ~{if (legacy) then "--legacy" else ""} \
      ~{if defined(re_genotype) then ("--regenotype " +  '"' + re_genotype + '"') else ""} \
      ~{if defined(bam_out) then ("--bamout " +  '"' + bam_out + '"') else ""} \
      ~{if (full_bam_out) then "--full-bamout" else ""} \
      ~{if defined(data_profile) then ("--data-profile " +  '"' + data_profile + '"') else ""} \
      ~{if defined(read_transforms) then ("--read-transforms " +  '"' + read_transforms + '"') else ""} \
      ~{if (mask_low_quality_tails) then "--mask-low-quality-tails" else ""} \
      ~{if (mask_tails) then "--mask-tails" else ""} \
      ~{if defined(soft_clip_masking) then ("--soft-clip-masking " +  '"' + soft_clip_masking + '"') else ""} \
      ~{if defined(mask_soft_clipped_boundary_bases) then ("--mask-soft-clipped-boundary-bases " +  '"' + mask_soft_clipped_boundary_bases + '"') else ""} \
      ~{if defined(adapter_masking) then ("--adapter-masking " +  '"' + adapter_masking + '"') else ""} \
      ~{if defined(overlap_masking) then ("--overlap-masking " +  '"' + overlap_masking + '"') else ""} \
      ~{if defined(mask_inverted_soft_clipping) then ("--mask-inverted-soft-clipping " +  '"' + mask_inverted_soft_clipping + '"') else ""} \
      ~{if defined(mask_three_prime_shifted_soft_clipped_heads) then ("--mask-3prime-shifted-soft-clipped-heads " +  '"' + mask_three_prime_shifted_soft_clipped_heads + '"') else ""} \
      ~{if defined(read_filtering) then ("--read-filtering " +  '"' + read_filtering + '"') else ""} \
      ~{if (consider_unmapped_reads) then "--consider-unmapped-reads" else ""} \
      ~{if defined(min_mapping_quality) then ("--min-mapping-quality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(good_base_quality) then ("--good-base-quality " +  '"' + good_base_quality + '"') else ""} \
      ~{if (min_good_base_fraction) then "--min-good-base-fraction" else ""} \
      ~{if defined(min_good_bases) then ("--min-good-bases " +  '"' + min_good_bases + '"') else ""} \
      ~{if (allow_qc_fails) then "--allow-qc-fails" else ""} \
      ~{if defined(min_read_length) then ("--min-read-length " +  '"' + min_read_length + '"') else ""} \
      ~{if defined(max_read_length) then ("--max-read-length " +  '"' + max_read_length + '"') else ""} \
      ~{if (allow_marked_duplicates) then "--allow-marked-duplicates" else ""} \
      ~{if (allow_octopus_duplicates) then "--allow-octopus-duplicates" else ""} \
      ~{if (no_reads_with_distant_segments) then "--no-reads-with-distant-segments" else ""} \
      ~{if (no_adapter_contaminated_reads) then "--no-adapter-contaminated-reads" else ""} \
      ~{if defined(down_sample_above) then ("--downsample-above " +  '"' + down_sample_above + '"') else ""} \
      ~{if defined(down_sample_target) then ("--downsample-target " +  '"' + down_sample_target + '"') else ""} \
      ~{if (arg_enable_candidate_generation_rawread) then "-g" else ""} \
      ~{if defined(repeat_candidate_generator) then ("--repeat-candidate-generator " +  '"' + repeat_candidate_generator + '"') else ""} \
      ~{if (arg_enable_candidate_generation_using) then "-a" else ""} \
      ~{if (arg_variant_paths) then "-c" else ""} \
      ~{if defined(source_candidates_file) then ("--source-candidates-file " +  '"' + source_candidates_file + '"') else ""} \
      ~{if (min_source_quality) then "--min-source-quality" else ""} \
      ~{if defined(use_filtered_source_candidates) then ("--use-filtered-source-candidates " +  '"' + use_filtered_source_candidates + '"') else ""} \
      ~{if defined(min_base_quality) then ("--min-base-quality " +  '"' + min_base_quality + '"') else ""} \
      ~{if (min_supporting_reads) then "--min-supporting-reads" else ""} \
      ~{if defined(max_variant_size) then ("--max-variant-size " +  '"' + max_variant_size + '"') else ""} \
      ~{if defined(km_er_sizes) then ("--kmer-sizes " +  '"' + km_er_sizes + '"') else ""} \
      ~{if defined(num_fall_back_km_ers) then ("--num-fallback-kmers " +  '"' + num_fall_back_km_ers + '"') else ""} \
      ~{if defined(fall_back_km_er_gap) then ("--fallback-kmer-gap " +  '"' + fall_back_km_er_gap + '"') else ""} \
      ~{if defined(max_region_to_assemble) then ("--max-region-to-assemble " +  '"' + max_region_to_assemble + '"') else ""} \
      ~{if defined(max_assemble_region_overlap) then ("--max-assemble-region-overlap " +  '"' + max_assemble_region_overlap + '"') else ""} \
      ~{if (assemble_all) then "--assemble-all" else ""} \
      ~{if defined(assembler_mask_base_quality) then ("--assembler-mask-base-quality " +  '"' + assembler_mask_base_quality + '"') else ""} \
      ~{if defined(min_km_er_prune) then ("--min-kmer-prune " +  '"' + min_km_er_prune + '"') else ""} \
      ~{if defined(max_bubbles) then ("--max-bubbles " +  '"' + max_bubbles + '"') else ""} \
      ~{if defined(min_bubble_score) then ("--min-bubble-score " +  '"' + min_bubble_score + '"') else ""} \
      ~{if (arg_maximum_number) then "-x" else ""} \
      ~{if defined(haplotype_hold_out_threshold) then ("--haplotype-holdout-threshold " +  '"' + haplotype_hold_out_threshold + '"') else ""} \
      ~{if defined(haplotype_overflow) then ("--haplotype-overflow " +  '"' + haplotype_overflow + '"') else ""} \
      ~{if defined(max_hold_out_depth) then ("--max-holdout-depth " +  '"' + max_hold_out_depth + '"') else ""} \
      ~{if defined(extension_level) then ("--extension-level " +  '"' + extension_level + '"') else ""} \
      ~{if (arg_haplotypes_filtered) then "-e" else ""} \
      ~{if defined(ded_up_haplotypes_with_prior_model) then ("--dedup-haplotypes-with-prior-model " +  '"' + ded_up_haplotypes_with_prior_model + '"') else ""} \
      ~{if defined(protect_reference_haplotype) then ("--protect-reference-haplotype " +  '"' + protect_reference_haplotype + '"') else ""} \
      ~{if (arg_population_use) then "-C" else ""} \
      ~{if (arg_contigs_unspecified) then "-P" else ""} \
      ~{if (arg_y_mt) then "-p" else ""} \
      ~{if defined(contig_plo_i_dies_file) then ("--contig-ploidies-file " +  '"' + contig_plo_i_dies_file + '"') else ""} \
      ~{if defined(min_variant_posterior) then ("--min-variant-posterior " +  '"' + min_variant_posterior + '"') else ""} \
      ~{if (ref_call) then "--refcall" else ""} \
      ~{if defined(ref_call_block_merge_threshold) then ("--refcall-block-merge-threshold " +  '"' + ref_call_block_merge_threshold + '"') else ""} \
      ~{if defined(min_ref_call_posterior) then ("--min-refcall-posterior " +  '"' + min_ref_call_posterior + '"') else ""} \
      ~{if (arg_snp_heterozygosity) then "-z" else ""} \
      ~{if defined(snp_heterozygosity_stdev) then ("--snp-heterozygosity-stdev " +  '"' + snp_heterozygosity_stdev + '"') else ""} \
      ~{if (arg_germline_indel) then "-y" else ""} \
      ~{if (use_uniform_genotype_priors) then "--use-uniform-genotype-priors" else ""} \
      ~{if defined(max_genotypes) then ("--max-genotypes " +  '"' + max_genotypes + '"') else ""} \
      ~{if (use_independent_genotype_priors) then "--use-independent-genotype-priors" else ""} \
      ~{if defined(model_posterior) then ("--model-posterior " +  '"' + model_posterior + '"') else ""} \
      ~{if defined(model_mapping_quality) then ("--model-mapping-quality " +  '"' + model_mapping_quality + '"') else ""} \
      ~{if defined(sequence_error_model) then ("--sequence-error-model " +  '"' + sequence_error_model + '"') else ""} \
      ~{if defined(max_vb_seeds) then ("--max-vb-seeds " +  '"' + max_vb_seeds + '"') else ""} \
      ~{if (arg_normal_level) then "-l" else ""} \
      ~{if defined(min_phase_score) then ("--min-phase-score " +  '"' + min_phase_score + '"') else ""} \
      ~{if (arg_turn_filtering) then "-f" else ""} \
      ~{if defined(filter_expression) then ("--filter-expression " +  '"' + filter_expression + '"') else ""} \
      ~{if defined(somatic_filter_expression) then ("--somatic-filter-expression " +  '"' + somatic_filter_expression + '"') else ""} \
      ~{if defined(de_novo_filter_expression) then ("--denovo-filter-expression " +  '"' + de_novo_filter_expression + '"') else ""} \
      ~{if defined(ref_call_filter_expression) then ("--refcall-filter-expression " +  '"' + ref_call_filter_expression + '"') else ""} \
      ~{if defined(use_calling_reads_for_filtering) then ("--use-calling-reads-for-filtering " +  '"' + use_calling_reads_for_filtering + '"') else ""} \
      ~{if (keep_unfiltered_calls) then "--keep-unfiltered-calls" else ""} \
      ~{if (annotations) then "--annotations" else ""} \
      ~{if defined(filter_vcf) then ("--filter-vcf " +  '"' + filter_vcf + '"') else ""} \
      ~{if defined(somatic_forest_file) then ("--somatic-forest-file " +  '"' + somatic_forest_file + '"') else ""}
  >>>
  parameter_meta {
    config: "A config file, used to populate command\\nline options"
    debug: "[=arg(=\\\"octopus_debug.log\\\")]  Writes verbose debug information to\\ndebug.log in the working directory"
    trace: "[=arg(=\\\"octopus_trace.log\\\")]  Writes very verbose debug information\\nto trace.log in the working directory"
    fast: "Turns off some features to improve\\nruntime, at the cost of decreased\\ncalling accuracy. Equivalent to '-a off\\n-l minimal -x 50`"
    very_fast: "The same as fast but also disables\\ninactive flank scoring"
    arg_sets_directory: "[ --working-directory ] arg        Sets the working directory"
    threads: "[=arg(=0)]                  Maximum number of threads to be used,\\nenabling this option with no argument\\nlets the application decide the number\\nof threads ands enables specific\\nalgorithm parallelisation"
    arg_mbmaximum_memory: "[ --max-reference-cache-footprint ] arg (=500MB)\\nMaximum memory footprint for cached\\nreference sequence"
    arg_gbnone_binding: "[ --target-read-buffer-footprint ] arg (=6GB)\\nNone binding request to limit the\\nmemory footprint of buffered read data"
    max_open_read_files: "(=250)      Limits the number of read files that\\ncan be open simultaneously"
    target_working_memory: "Target working memory footprint for\\nanalysis not including read or\\nreference footprint"
    temp_directory_prefix: "(=\\\"octopus-temp\\\")\\nFile name prefix of temporary directory\\nfor calling"
    arg_fasta_format: "[ --reference ] arg                FASTA format reference genome file to\\nbe analysed. Target regions will be\\nextracted from the reference index if\\nnot provded explicitly"
    arg_spaceseparated_list_bamcram: "[ --reads ] arg                    Space-separated list of BAM/CRAM files\\nto be analysed. May be specified\\nmultiple times"
    arg_files_containing: "[ --reads-file ] arg               Files containing lists of BAM/CRAM\\nfiles, one per line, to be analysed"
    one_based_indexing: "Notifies that input regions are given\\nusing one based indexing rather than\\nzero based"
    arg_spaceseparated_regionschrombeginend: "[ --regions ] arg                  Space-separated list of regions\\n(chrom:begin-end) to be analysed. May\\nbe specified multiple times"
    arg_file_containing: "[ --regions-file ] arg             File containing a list of regions\\n(chrom:begin-end), one per line, to be\\nanalysed"
    arg_spaceseparated_list_skip: "[ --skip-regions ] arg             Space-separated list of regions\\n(chrom:begin-end) to skip May be\\nspecified multiple times"
    arg_file_regions: "[ --skip-regions-file ] arg        File of regions (chrom:begin-end), one\\nper line, to skip"
    arg_spaceseparated_sample: "[ --samples ] arg                  Space-separated list of sample names to"
    ignore_unmapped_contigs: "Ignore any contigs that are not present\\nin the read files"
    pedigree: "PED file containing sample pedigree"
    arg_file_where: "[ --output ] arg                   File to where output is written. If\\nunspecified, calls are written to\\nstdout"
    contig_output_order: "(=asInReferenceIndex)\\nThe order contigs should be written to\\nthe output"
    sites_only: "Only reports call sites (i.e. without\\nsample genotype information)"
    legacy: "Outputs a legacy version of the final\\ncallset in addition to the native\\nversion"
    re_genotype: "VCF file specifying calls to\\nregenotype, only sites in this files\\nwill appear in the final output"
    bam_out: "Output realigned BAM files"
    full_bam_out: "Output all reads when producing\\nrealigned bam outputs rather than just\\nvariant read minibams"
    data_profile: "Output a profile of polymorphisms and\\nerrors found in the data"
    read_transforms: "(=1)            Enable all read transformations"
    mask_low_quality_tails: "[=arg(=3)]   Masks read tail bases with base quality\\nless than this"
    mask_tails: "[=arg(=1)]               Unconditionally mask this many read\\ntail sbases"
    soft_clip_masking: "(=1)          Turn on or off soft clip base"
    mask_soft_clipped_boundary_bases: "(=2)\\nMasks this number of adjacent non soft\\nclipped bases when soft clipped bases\\nare present"
    adapter_masking: "(=1)            Enable adapter detection and masking"
    overlap_masking: "(=1)            Enable read segment overlap masking"
    mask_inverted_soft_clipping: "(=0)\\nMask soft clipped sequence that is an\\ninverted copy of a proximate sequence"
    mask_three_prime_shifted_soft_clipped_heads: "(=0)\\nMask soft clipped read head sequence\\nthat is a copy of a proximate 3'\\nsequence"
    read_filtering: "(=1)             Enable all read filters"
    consider_unmapped_reads: "Allows reads marked as unmapped to be\\nused for calling"
    min_mapping_quality: "(=20)       Minimum read mapping quality required\\nto consider a read for calling"
    good_base_quality: "(=20)         Base quality threshold used by\\nmin-good-bases and min-good-base-fracti\\non filters"
    min_good_base_fraction: "[=arg(=0.5)] Base quality threshold used by\\nmin-good-bases filter"
    min_good_bases: "(=20)            Minimum number of bases with quality\\nmin-base-quality before read is\\nconsidered"
    allow_qc_fails: "Filters reads marked as QC failed"
    min_read_length: "Filters reads shorter than this"
    max_read_length: "Filter reads longer than this"
    allow_marked_duplicates: "Allows reads marked as duplicate in\\nalignment record"
    allow_octopus_duplicates: "Allows reads considered duplicates by"
    no_reads_with_distant_segments: "Filter reads with template segments\\nthat are on different contigs"
    no_adapter_contaminated_reads: "Filter reads with possible adapter"
    down_sample_above: "(=1000)        Downsample reads in regions where\\ncoverage is over this"
    down_sample_target: "(=500)        The target coverage for the downsampler"
    arg_enable_candidate_generation_rawread: "[ --raw-cigar-candidate-generator ] arg (=1)\\nEnable candidate generation from raw\\nread alignments (CIGAR strings)"
    repeat_candidate_generator: "(=1) Enable candidate generation from\\nadjusted read alignments (CIGAR\\nstrings) around tandem repeats"
    arg_enable_candidate_generation_using: "[ --assembly-candidate-generator ] arg (=1)\\nEnable candidate generation using local\\nre-assembly"
    arg_variant_paths: "[ --source-candidates ] arg        Variant file paths containing known\\nvariants. These variants will\\nautomatically become candidates"
    source_candidates_file: "Files containing lists of source\\ncandidate variant files"
    min_source_quality: "[=arg(=2)]       Only variants with quality above this\\nvalue are considered for candidate\\ngeneration"
    use_filtered_source_candidates: "(=0)\\nUse variants from source VCF records\\nthat have been filtered"
    min_base_quality: "(=20)          Only bases with quality above this\\nvalue are considered for candidate\\ngeneration"
    min_supporting_reads: "[=arg(=2)]     Minimum number of reads that must\\nsupport a variant if it is to be\\nconsidered a candidate. By default\\noctopus will automatically determine\\nthis value"
    max_variant_size: "(=2000)        Maximum candidate variant size to\\nconsider (in region space)"
    km_er_sizes: "(=10 15 20)          Kmer sizes to use for local assembly"
    num_fall_back_km_ers: "(=10)        How many local assembly fallback kmer\\nsizes to use if the default sizes fail"
    fall_back_km_er_gap: "(=10)         The gap size used to generate local\\nassembly fallback kmers"
    max_region_to_assemble: "(=400)   The maximum region size that can be\\nused for local assembly"
    max_assemble_region_overlap: "(=200)\\nThe maximum number of bases allowed to\\noverlap assembly regions"
    assemble_all: "Forces all regions to be assembled"
    assembler_mask_base_quality: "(=10)\\nAligned bases with quality less than\\nthis will be converted to reference\\nbefore being inserted into the De\\nBruijn graph"
    min_km_er_prune: "(=2)             Minimum number of read observations to\\nkeep a kmer in the assembly graph\\nbefore bubble extraction"
    max_bubbles: "(=30)               Maximum number of bubbles to extract\\nfrom the assembly graph"
    min_bubble_score: "(=2)           Minimum bubble score that will be\\nextracted from the assembly graph"
    arg_maximum_number: "[ --max-haplotypes ] arg (=200)    Maximum number of candidate haplotypes\\nthe caller may consider. If a region\\ncontains more candidate haplotypes than\\nthis then filtering is applied"
    haplotype_hold_out_threshold: "(=2500)\\nForces the haplotype generator to\\ntemporarily hold out some alleles if\\nthe number of haplotypes in a region\\nexceeds this threshold"
    haplotype_overflow: "(=200000)    Regions with more haplotypes than this\\nwill be skipped"
    max_hold_out_depth: "(=20)         Maximum number of holdout attempts the\\nhaplotype generator can make before the\\nregion is skipped"
    extension_level: "(=normal)       Level of haplotype extension. Possible\\nvalues are: conservative, normal,\\noptimistic, aggressive"
    arg_haplotypes_filtered: "[ --haplotype-extension-threshold ] arg (=100)\\nHaplotypes with posterior probability\\nless than this can be filtered before\\nextension"
    ded_up_haplotypes_with_prior_model: "(=1)\\nRemove duplicate haplotypes using\\nmutation prior model"
    protect_reference_haplotype: "(=1)\\nProtect the reference haplotype from\\nfiltering"
    arg_population_use: "[ --caller ] arg (=population)     Which of the octopus callers to use"
    arg_contigs_unspecified: "[ --organism-ploidy ] arg (=2)     All contigs with unspecified ploidies\\nare assumed the organism ploidy"
    arg_y_mt: "[ --contig-ploidies ] arg (=Y=1 chrY=1 MT=1 chrM=1)\\nSpace-separated list of contig\\n(contig=ploidy) or sample contig\\n(sample:contig=ploidy) ploidies"
    contig_plo_i_dies_file: "File containing a list of contig\\n(contig=ploidy) or sample contig\\n(sample:contig=ploidy) ploidies, one\\nper line"
    min_variant_posterior: "(=1)      Report variant alleles with posterior\\nprobability (phred scale) greater than\\nthis"
    ref_call: "[=arg(=blocked)]            Caller will report reference confidence\\ncalls for each position (positional),\\nor in automatically sized blocks\\n(blocked)"
    ref_call_block_merge_threshold: "(=10)\\nThreshold to merge adjacent refcall\\npositions when using blocked refcalling"
    min_ref_call_posterior: "(=2)      Report reference alleles with posterior\\nprobability (phred scale) greater than\\nthis"
    arg_snp_heterozygosity: "[ --snp-heterozygosity ] arg (=0.001)\\nGermline SNP heterozygosity for the\\ngiven samples"
    snp_heterozygosity_stdev: "(=0.01)\\nStandard deviation of the germline SNP\\nheterozygosity used for the given\\nsamples"
    arg_germline_indel: "[ --indel-heterozygosity ] arg (=0.0001)\\nGermline indel heterozygosity for the\\ngiven samples"
    use_uniform_genotype_priors: "Use a uniform prior model when\\ncalculating genotype posteriors"
    max_genotypes: "(=5000)           The maximum number of genotypes to"
    use_independent_genotype_priors: "Use independent genotype priors for\\njoint calling"
    model_posterior: "Calculate model posteriors for every"
    model_mapping_quality: "(=1)      Include the read mapping quality in the\\nhaplotype likelihood calculation"
    sequence_error_model: "(=PCR-free.HiSeq-2500)\\nThe sequencer error model to use"
    max_vb_seeds: "(=12)              Maximum number of seeds to use for\\nVariational Bayes algorithms"
    arg_normal_level: "[ --phasing-level ] arg (=normal)  Level of phasing - longer range phasing\\ncan improve calling accuracy at the\\ncost of runtime speed. Possible values\\nare: minimal, conservative, moderate,\\nnormal, aggressive"
    min_phase_score: "(=10)           Minimum phase score (phred scale)\\nrequired to report sites as phased"
    arg_turn_filtering: "[ --call-filtering ] arg (=1)      Turn variant call filtering on or off"
    filter_expression: "(=QUAL < 10 | MQ < 10 | MP < 10 | AF < 0.05 | SB > 0.98 | BQ < 15 | DP < 1)\\nBoolean expression to use to filter\\nvariant calls"
    somatic_filter_expression: "(=QUAL < 2 | GQ < 20 | MQ < 30 | SMQ < 40 | SB > 0.9 | SD > 0.9 | BQ < 20 | DP < 3 | MF > 0.2 | NC > 1 | FRF > 0.5)\\nBoolean expression to use to filter\\nsomatic variant calls"
    de_novo_filter_expression: "(=QUAL < 50 | PP < 40 | GQ < 20 | MQ < 30 | AF < 0.1 | SB > 0.95 | BQ < 20 | DP < 10 | DC > 1 | MF > 0.2 | FRF > 0.5 | MP < 30 | MQ0 > 2)\\nBoolean expression to use to filter\\nsomatic variant calls"
    ref_call_filter_expression: "(=QUAL < 2 | GQ < 20 | MQ < 10 | DP < 10 | MF > 0.2)\\nBoolean expression to use to filter\\nhomozygous reference calls"
    use_calling_reads_for_filtering: "(=0)\\nUse the original reads used for variant\\ncalling for filtering"
    keep_unfiltered_calls: "Keep a copy of unfiltered calls"
    annotations: "[=arg(=active)]         Annotations to write to final VCF"
    filter_vcf: "Filter the given Octopus VCF without"
    somatic_forest_file: "Trained Ranger random forest file for\\nsomatic variants\\n"
    analyse: "-s [ --samples-file ] arg             File of sample names to analyse, one "
    recalibration: "--soft-clip-mask-threshold [=arg(=3)] Only soft clipped bases with quality "
    octopus: "--allow-secondary-alignments          Allows reads marked as secondary "
    contamination: "--disable-downsampling                Disables downsampling"
    evaluate: "--max-joint-genotypes arg (=1000000)  The maximum number of joint genotype "
    _inactiveflankscoring_arg: "--inactive-flank-scoring arg (=1)     Disables additional calculation to "
    calling: "--forest-file arg                     Trained Ranger random forest file"
  }
  output {
    File out_stdout = stdout()
    File out_arg_file_where = "${in_arg_file_where}"
    File out_re_genotype = "${in_re_genotype}"
  }
}