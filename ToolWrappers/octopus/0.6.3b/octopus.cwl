class: CommandLineTool
id: octopus.cwl
inputs:
- id: in_config
  doc: "A config file, used to populate command\nline options"
  type: File
  inputBinding:
    prefix: --config
- id: in_debug
  doc: "[=arg(=\"octopus_debug.log\")]  Writes verbose debug information to\ndebug.log\
    \ in the working directory"
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_trace
  doc: "[=arg(=\"octopus_trace.log\")]  Writes very verbose debug information\nto\
    \ trace.log in the working directory"
  type: boolean
  inputBinding:
    prefix: --trace
- id: in_fast
  doc: "Turns off some features to improve\nruntime, at the cost of decreased\ncalling\
    \ accuracy. Equivalent to '-a off\n-l minimal -x 50`"
  type: boolean
  inputBinding:
    prefix: --fast
- id: in_very_fast
  doc: "The same as fast but also disables\ninactive flank scoring"
  type: boolean
  inputBinding:
    prefix: --very-fast
- id: in_arg_sets_directory
  doc: '[ --working-directory ] arg        Sets the working directory'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_threads
  doc: "[=arg(=0)]                  Maximum number of threads to be used,\nenabling\
    \ this option with no argument\nlets the application decide the number\nof threads\
    \ ands enables specific\nalgorithm parallelisation"
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_arg_mbmaximum_memory
  doc: "[ --max-reference-cache-footprint ] arg (=500MB)\nMaximum memory footprint\
    \ for cached\nreference sequence"
  type: boolean
  inputBinding:
    prefix: -X
- id: in_arg_gbnone_binding
  doc: "[ --target-read-buffer-footprint ] arg (=6GB)\nNone binding request to limit\
    \ the\nmemory footprint of buffered read data"
  type: boolean
  inputBinding:
    prefix: -B
- id: in_max_open_read_files
  doc: "(=250)      Limits the number of read files that\ncan be open simultaneously"
  type: long
  inputBinding:
    prefix: --max-open-read-files
- id: in_target_working_memory
  doc: "Target working memory footprint for\nanalysis not including read or\nreference\
    \ footprint"
  type: string
  inputBinding:
    prefix: --target-working-memory
- id: in_temp_directory_prefix
  doc: "(=\"octopus-temp\")\nFile name prefix of temporary directory\nfor calling"
  type: Directory
  inputBinding:
    prefix: --temp-directory-prefix
- id: in_arg_fasta_format
  doc: "[ --reference ] arg                FASTA format reference genome file to\n\
    be analysed. Target regions will be\nextracted from the reference index if\nnot\
    \ provded explicitly"
  type: boolean
  inputBinding:
    prefix: -R
- id: in_arg_spaceseparated_list_bamcram
  doc: "[ --reads ] arg                    Space-separated list of BAM/CRAM files\n\
    to be analysed. May be specified\nmultiple times"
  type: boolean
  inputBinding:
    prefix: -I
- id: in_arg_files_containing
  doc: "[ --reads-file ] arg               Files containing lists of BAM/CRAM\nfiles,\
    \ one per line, to be analysed"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_one_based_indexing
  doc: "Notifies that input regions are given\nusing one based indexing rather than\n\
    zero based"
  type: boolean
  inputBinding:
    prefix: --one-based-indexing
- id: in_arg_spaceseparated_regionschrombeginend
  doc: "[ --regions ] arg                  Space-separated list of regions\n(chrom:begin-end)\
    \ to be analysed. May\nbe specified multiple times"
  type: boolean
  inputBinding:
    prefix: -T
- id: in_arg_file_containing
  doc: "[ --regions-file ] arg             File containing a list of regions\n(chrom:begin-end),\
    \ one per line, to be\nanalysed"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_arg_spaceseparated_list_skip
  doc: "[ --skip-regions ] arg             Space-separated list of regions\n(chrom:begin-end)\
    \ to skip May be\nspecified multiple times"
  type: boolean
  inputBinding:
    prefix: -K
- id: in_arg_file_regions
  doc: "[ --skip-regions-file ] arg        File of regions (chrom:begin-end), one\n\
    per line, to skip"
  type: boolean
  inputBinding:
    prefix: -k
- id: in_arg_spaceseparated_sample
  doc: '[ --samples ] arg                  Space-separated list of sample names to'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_ignore_unmapped_contigs
  doc: "Ignore any contigs that are not present\nin the read files"
  type: boolean
  inputBinding:
    prefix: --ignore-unmapped-contigs
- id: in_pedigree
  doc: PED file containing sample pedigree
  type: File
  inputBinding:
    prefix: --pedigree
- id: in_arg_file_where
  doc: "[ --output ] arg                   File to where output is written. If\nunspecified,\
    \ calls are written to\nstdout"
  type: File
  inputBinding:
    prefix: -o
- id: in_contig_output_order
  doc: "(=asInReferenceIndex)\nThe order contigs should be written to\nthe output"
  type: string
  inputBinding:
    prefix: --contig-output-order
- id: in_sites_only
  doc: "Only reports call sites (i.e. without\nsample genotype information)"
  type: boolean
  inputBinding:
    prefix: --sites-only
- id: in_legacy
  doc: "Outputs a legacy version of the final\ncallset in addition to the native\n\
    version"
  type: boolean
  inputBinding:
    prefix: --legacy
- id: in_re_genotype
  doc: "VCF file specifying calls to\nregenotype, only sites in this files\nwill appear\
    \ in the final output"
  type: File
  inputBinding:
    prefix: --regenotype
- id: in_bam_out
  doc: Output realigned BAM files
  type: string
  inputBinding:
    prefix: --bamout
- id: in_full_bam_out
  doc: "Output all reads when producing\nrealigned bam outputs rather than just\n\
    variant read minibams"
  type: boolean
  inputBinding:
    prefix: --full-bamout
- id: in_data_profile
  doc: "Output a profile of polymorphisms and\nerrors found in the data"
  type: string
  inputBinding:
    prefix: --data-profile
- id: in_read_transforms
  doc: (=1)            Enable all read transformations
  type: long
  inputBinding:
    prefix: --read-transforms
- id: in_mask_low_quality_tails
  doc: "[=arg(=3)]   Masks read tail bases with base quality\nless than this"
  type: boolean
  inputBinding:
    prefix: --mask-low-quality-tails
- id: in_mask_tails
  doc: "[=arg(=1)]               Unconditionally mask this many read\ntail sbases"
  type: boolean
  inputBinding:
    prefix: --mask-tails
- id: in_soft_clip_masking
  doc: (=1)          Turn on or off soft clip base
  type: long
  inputBinding:
    prefix: --soft-clip-masking
- id: in_mask_soft_clipped_boundary_bases
  doc: "(=2)\nMasks this number of adjacent non soft\nclipped bases when soft clipped\
    \ bases\nare present"
  type: long
  inputBinding:
    prefix: --mask-soft-clipped-boundary-bases
- id: in_adapter_masking
  doc: (=1)            Enable adapter detection and masking
  type: long
  inputBinding:
    prefix: --adapter-masking
- id: in_overlap_masking
  doc: (=1)            Enable read segment overlap masking
  type: long
  inputBinding:
    prefix: --overlap-masking
- id: in_mask_inverted_soft_clipping
  doc: "(=0)\nMask soft clipped sequence that is an\ninverted copy of a proximate\
    \ sequence"
  type: long
  inputBinding:
    prefix: --mask-inverted-soft-clipping
- id: in_mask_three_prime_shifted_soft_clipped_heads
  doc: "(=0)\nMask soft clipped read head sequence\nthat is a copy of a proximate\
    \ 3'\nsequence"
  type: long
  inputBinding:
    prefix: --mask-3prime-shifted-soft-clipped-heads
- id: in_read_filtering
  doc: (=1)             Enable all read filters
  type: long
  inputBinding:
    prefix: --read-filtering
- id: in_consider_unmapped_reads
  doc: "Allows reads marked as unmapped to be\nused for calling"
  type: boolean
  inputBinding:
    prefix: --consider-unmapped-reads
- id: in_min_mapping_quality
  doc: "(=20)       Minimum read mapping quality required\nto consider a read for\
    \ calling"
  type: long
  inputBinding:
    prefix: --min-mapping-quality
- id: in_good_base_quality
  doc: "(=20)         Base quality threshold used by\nmin-good-bases and min-good-base-fracti\n\
    on filters"
  type: long
  inputBinding:
    prefix: --good-base-quality
- id: in_min_good_base_fraction
  doc: "[=arg(=0.5)] Base quality threshold used by\nmin-good-bases filter"
  type: boolean
  inputBinding:
    prefix: --min-good-base-fraction
- id: in_min_good_bases
  doc: "(=20)            Minimum number of bases with quality\nmin-base-quality before\
    \ read is\nconsidered"
  type: long
  inputBinding:
    prefix: --min-good-bases
- id: in_allow_qc_fails
  doc: Filters reads marked as QC failed
  type: boolean
  inputBinding:
    prefix: --allow-qc-fails
- id: in_min_read_length
  doc: Filters reads shorter than this
  type: long
  inputBinding:
    prefix: --min-read-length
- id: in_max_read_length
  doc: Filter reads longer than this
  type: long
  inputBinding:
    prefix: --max-read-length
- id: in_allow_marked_duplicates
  doc: "Allows reads marked as duplicate in\nalignment record"
  type: boolean
  inputBinding:
    prefix: --allow-marked-duplicates
- id: in_allow_octopus_duplicates
  doc: Allows reads considered duplicates by
  type: boolean
  inputBinding:
    prefix: --allow-octopus-duplicates
- id: in_no_reads_with_distant_segments
  doc: "Filter reads with template segments\nthat are on different contigs"
  type: boolean
  inputBinding:
    prefix: --no-reads-with-distant-segments
- id: in_no_adapter_contaminated_reads
  doc: Filter reads with possible adapter
  type: boolean
  inputBinding:
    prefix: --no-adapter-contaminated-reads
- id: in_down_sample_above
  doc: "(=1000)        Downsample reads in regions where\ncoverage is over this"
  type: long
  inputBinding:
    prefix: --downsample-above
- id: in_down_sample_target
  doc: (=500)        The target coverage for the downsampler
  type: long
  inputBinding:
    prefix: --downsample-target
- id: in_arg_enable_candidate_generation_rawread
  doc: "[ --raw-cigar-candidate-generator ] arg (=1)\nEnable candidate generation\
    \ from raw\nread alignments (CIGAR strings)"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_repeat_candidate_generator
  doc: "(=1) Enable candidate generation from\nadjusted read alignments (CIGAR\nstrings)\
    \ around tandem repeats"
  type: long
  inputBinding:
    prefix: --repeat-candidate-generator
- id: in_arg_enable_candidate_generation_using
  doc: "[ --assembly-candidate-generator ] arg (=1)\nEnable candidate generation using\
    \ local\nre-assembly"
  type: boolean
  inputBinding:
    prefix: -a
- id: in_arg_variant_paths
  doc: "[ --source-candidates ] arg        Variant file paths containing known\nvariants.\
    \ These variants will\nautomatically become candidates"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_source_candidates_file
  doc: "Files containing lists of source\ncandidate variant files"
  type: File
  inputBinding:
    prefix: --source-candidates-file
- id: in_min_source_quality
  doc: "[=arg(=2)]       Only variants with quality above this\nvalue are considered\
    \ for candidate\ngeneration"
  type: boolean
  inputBinding:
    prefix: --min-source-quality
- id: in_use_filtered_source_candidates
  doc: "(=0)\nUse variants from source VCF records\nthat have been filtered"
  type: long
  inputBinding:
    prefix: --use-filtered-source-candidates
- id: in_min_base_quality
  doc: "(=20)          Only bases with quality above this\nvalue are considered for\
    \ candidate\ngeneration"
  type: long
  inputBinding:
    prefix: --min-base-quality
- id: in_min_supporting_reads
  doc: "[=arg(=2)]     Minimum number of reads that must\nsupport a variant if it\
    \ is to be\nconsidered a candidate. By default\noctopus will automatically determine\n\
    this value"
  type: boolean
  inputBinding:
    prefix: --min-supporting-reads
- id: in_max_variant_size
  doc: "(=2000)        Maximum candidate variant size to\nconsider (in region space)"
  type: long
  inputBinding:
    prefix: --max-variant-size
- id: in_km_er_sizes
  doc: (=10 15 20)          Kmer sizes to use for local assembly
  type: long
  inputBinding:
    prefix: --kmer-sizes
- id: in_num_fall_back_km_ers
  doc: "(=10)        How many local assembly fallback kmer\nsizes to use if the default\
    \ sizes fail"
  type: long
  inputBinding:
    prefix: --num-fallback-kmers
- id: in_fall_back_km_er_gap
  doc: "(=10)         The gap size used to generate local\nassembly fallback kmers"
  type: long
  inputBinding:
    prefix: --fallback-kmer-gap
- id: in_max_region_to_assemble
  doc: "(=400)   The maximum region size that can be\nused for local assembly"
  type: long
  inputBinding:
    prefix: --max-region-to-assemble
- id: in_max_assemble_region_overlap
  doc: "(=200)\nThe maximum number of bases allowed to\noverlap assembly regions"
  type: long
  inputBinding:
    prefix: --max-assemble-region-overlap
- id: in_assemble_all
  doc: Forces all regions to be assembled
  type: boolean
  inputBinding:
    prefix: --assemble-all
- id: in_assembler_mask_base_quality
  doc: "(=10)\nAligned bases with quality less than\nthis will be converted to reference\n\
    before being inserted into the De\nBruijn graph"
  type: long
  inputBinding:
    prefix: --assembler-mask-base-quality
- id: in_min_km_er_prune
  doc: "(=2)             Minimum number of read observations to\nkeep a kmer in the\
    \ assembly graph\nbefore bubble extraction"
  type: long
  inputBinding:
    prefix: --min-kmer-prune
- id: in_max_bubbles
  doc: "(=30)               Maximum number of bubbles to extract\nfrom the assembly\
    \ graph"
  type: long
  inputBinding:
    prefix: --max-bubbles
- id: in_min_bubble_score
  doc: "(=2)           Minimum bubble score that will be\nextracted from the assembly\
    \ graph"
  type: long
  inputBinding:
    prefix: --min-bubble-score
- id: in_arg_maximum_number
  doc: "[ --max-haplotypes ] arg (=200)    Maximum number of candidate haplotypes\n\
    the caller may consider. If a region\ncontains more candidate haplotypes than\n\
    this then filtering is applied"
  type: boolean
  inputBinding:
    prefix: -x
- id: in_haplotype_hold_out_threshold
  doc: "(=2500)\nForces the haplotype generator to\ntemporarily hold out some alleles\
    \ if\nthe number of haplotypes in a region\nexceeds this threshold"
  type: long
  inputBinding:
    prefix: --haplotype-holdout-threshold
- id: in_haplotype_overflow
  doc: "(=200000)    Regions with more haplotypes than this\nwill be skipped"
  type: long
  inputBinding:
    prefix: --haplotype-overflow
- id: in_max_hold_out_depth
  doc: "(=20)         Maximum number of holdout attempts the\nhaplotype generator\
    \ can make before the\nregion is skipped"
  type: long
  inputBinding:
    prefix: --max-holdout-depth
- id: in_extension_level
  doc: "(=normal)       Level of haplotype extension. Possible\nvalues are: conservative,\
    \ normal,\noptimistic, aggressive"
  type: string
  inputBinding:
    prefix: --extension-level
- id: in_arg_haplotypes_filtered
  doc: "[ --haplotype-extension-threshold ] arg (=100)\nHaplotypes with posterior\
    \ probability\nless than this can be filtered before\nextension"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_ded_up_haplotypes_with_prior_model
  doc: "(=1)\nRemove duplicate haplotypes using\nmutation prior model"
  type: long
  inputBinding:
    prefix: --dedup-haplotypes-with-prior-model
- id: in_protect_reference_haplotype
  doc: "(=1)\nProtect the reference haplotype from\nfiltering"
  type: long
  inputBinding:
    prefix: --protect-reference-haplotype
- id: in_arg_population_use
  doc: '[ --caller ] arg (=population)     Which of the octopus callers to use'
  type: boolean
  inputBinding:
    prefix: -C
- id: in_arg_contigs_unspecified
  doc: "[ --organism-ploidy ] arg (=2)     All contigs with unspecified ploidies\n\
    are assumed the organism ploidy"
  type: boolean
  inputBinding:
    prefix: -P
- id: in_arg_y_mt
  doc: "[ --contig-ploidies ] arg (=Y=1 chrY=1 MT=1 chrM=1)\nSpace-separated list\
    \ of contig\n(contig=ploidy) or sample contig\n(sample:contig=ploidy) ploidies"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_contig_plo_i_dies_file
  doc: "File containing a list of contig\n(contig=ploidy) or sample contig\n(sample:contig=ploidy)\
    \ ploidies, one\nper line"
  type: File
  inputBinding:
    prefix: --contig-ploidies-file
- id: in_min_variant_posterior
  doc: "(=1)      Report variant alleles with posterior\nprobability (phred scale)\
    \ greater than\nthis"
  type: long
  inputBinding:
    prefix: --min-variant-posterior
- id: in_ref_call
  doc: "[=arg(=blocked)]            Caller will report reference confidence\ncalls\
    \ for each position (positional),\nor in automatically sized blocks\n(blocked)"
  type: boolean
  inputBinding:
    prefix: --refcall
- id: in_ref_call_block_merge_threshold
  doc: "(=10)\nThreshold to merge adjacent refcall\npositions when using blocked refcalling"
  type: long
  inputBinding:
    prefix: --refcall-block-merge-threshold
- id: in_min_ref_call_posterior
  doc: "(=2)      Report reference alleles with posterior\nprobability (phred scale)\
    \ greater than\nthis"
  type: long
  inputBinding:
    prefix: --min-refcall-posterior
- id: in_arg_snp_heterozygosity
  doc: "[ --snp-heterozygosity ] arg (=0.001)\nGermline SNP heterozygosity for the\n\
    given samples"
  type: boolean
  inputBinding:
    prefix: -z
- id: in_snp_heterozygosity_stdev
  doc: "(=0.01)\nStandard deviation of the germline SNP\nheterozygosity used for the\
    \ given\nsamples"
  type: double
  inputBinding:
    prefix: --snp-heterozygosity-stdev
- id: in_arg_germline_indel
  doc: "[ --indel-heterozygosity ] arg (=0.0001)\nGermline indel heterozygosity for\
    \ the\ngiven samples"
  type: boolean
  inputBinding:
    prefix: -y
- id: in_use_uniform_genotype_priors
  doc: "Use a uniform prior model when\ncalculating genotype posteriors"
  type: boolean
  inputBinding:
    prefix: --use-uniform-genotype-priors
- id: in_max_genotypes
  doc: (=5000)           The maximum number of genotypes to
  type: long
  inputBinding:
    prefix: --max-genotypes
- id: in_use_independent_genotype_priors
  doc: "Use independent genotype priors for\njoint calling"
  type: boolean
  inputBinding:
    prefix: --use-independent-genotype-priors
- id: in_model_posterior
  doc: Calculate model posteriors for every
  type: string
  inputBinding:
    prefix: --model-posterior
- id: in_model_mapping_quality
  doc: "(=1)      Include the read mapping quality in the\nhaplotype likelihood calculation"
  type: long
  inputBinding:
    prefix: --model-mapping-quality
- id: in_sequence_error_model
  doc: "(=PCR-free.HiSeq-2500)\nThe sequencer error model to use"
  type: long
  inputBinding:
    prefix: --sequence-error-model
- id: in_max_vb_seeds
  doc: "(=12)              Maximum number of seeds to use for\nVariational Bayes algorithms"
  type: long
  inputBinding:
    prefix: --max-vb-seeds
- id: in_arg_normal_level
  doc: "[ --phasing-level ] arg (=normal)  Level of phasing - longer range phasing\n\
    can improve calling accuracy at the\ncost of runtime speed. Possible values\n\
    are: minimal, conservative, moderate,\nnormal, aggressive"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_min_phase_score
  doc: "(=10)           Minimum phase score (phred scale)\nrequired to report sites\
    \ as phased"
  type: long
  inputBinding:
    prefix: --min-phase-score
- id: in_arg_turn_filtering
  doc: '[ --call-filtering ] arg (=1)      Turn variant call filtering on or off'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_filter_expression
  doc: "(=QUAL < 10 | MQ < 10 | MP < 10 | AF < 0.05 | SB > 0.98 | BQ < 15 | DP < 1)\n\
    Boolean expression to use to filter\nvariant calls"
  type: boolean
  inputBinding:
    prefix: --filter-expression
- id: in_somatic_filter_expression
  doc: "(=QUAL < 2 | GQ < 20 | MQ < 30 | SMQ < 40 | SB > 0.9 | SD > 0.9 | BQ < 20\
    \ | DP < 3 | MF > 0.2 | NC > 1 | FRF > 0.5)\nBoolean expression to use to filter\n\
    somatic variant calls"
  type: boolean
  inputBinding:
    prefix: --somatic-filter-expression
- id: in_de_novo_filter_expression
  doc: "(=QUAL < 50 | PP < 40 | GQ < 20 | MQ < 30 | AF < 0.1 | SB > 0.95 | BQ < 20\
    \ | DP < 10 | DC > 1 | MF > 0.2 | FRF > 0.5 | MP < 30 | MQ0 > 2)\nBoolean expression\
    \ to use to filter\nsomatic variant calls"
  type: boolean
  inputBinding:
    prefix: --denovo-filter-expression
- id: in_ref_call_filter_expression
  doc: "(=QUAL < 2 | GQ < 20 | MQ < 10 | DP < 10 | MF > 0.2)\nBoolean expression to\
    \ use to filter\nhomozygous reference calls"
  type: boolean
  inputBinding:
    prefix: --refcall-filter-expression
- id: in_use_calling_reads_for_filtering
  doc: "(=0)\nUse the original reads used for variant\ncalling for filtering"
  type: long
  inputBinding:
    prefix: --use-calling-reads-for-filtering
- id: in_keep_unfiltered_calls
  doc: Keep a copy of unfiltered calls
  type: boolean
  inputBinding:
    prefix: --keep-unfiltered-calls
- id: in_annotations
  doc: '[=arg(=active)]         Annotations to write to final VCF'
  type: boolean
  inputBinding:
    prefix: --annotations
- id: in_filter_vcf
  doc: Filter the given Octopus VCF without
  type: string
  inputBinding:
    prefix: --filter-vcf
- id: in_somatic_forest_file
  doc: "Trained Ranger random forest file for\nsomatic variants\n"
  type: File
  inputBinding:
    prefix: --somatic-forest-file
- id: in_analyse
  doc: '-s [ --samples-file ] arg             File of sample names to analyse, one '
  type: string
  inputBinding:
    position: 0
- id: in_recalibration
  doc: '--soft-clip-mask-threshold [=arg(=3)] Only soft clipped bases with quality '
  type: string
  inputBinding:
    position: 0
- id: in_octopus
  doc: '--allow-secondary-alignments          Allows reads marked as secondary '
  type: string
  inputBinding:
    position: 0
- id: in_contamination
  doc: --disable-downsampling                Disables downsampling
  type: string
  inputBinding:
    position: 0
- id: in_evaluate
  doc: '--max-joint-genotypes arg (=1000000)  The maximum number of joint genotype '
  type: string
  inputBinding:
    position: 0
- id: in_call
  doc: '--inactive-flank-scoring arg (=1)     Disables additional calculation to '
  type: string
  inputBinding:
    position: 0
- id: in_calling
  doc: --forest-file arg                     Trained Ranger random forest file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_file_where
  doc: "[ --output ] arg                   File to where output is written. If\nunspecified,\
    \ calls are written to\nstdout"
  type: File
  outputBinding:
    glob: $(inputs.in_arg_file_where)
- id: out_re_genotype
  doc: "VCF file specifying calls to\nregenotype, only sites in this files\nwill appear\
    \ in the final output"
  type: File
  outputBinding:
    glob: $(inputs.in_re_genotype)
cwlVersion: v1.1
baseCommand:
- octopus
