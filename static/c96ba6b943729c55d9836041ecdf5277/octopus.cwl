class: CommandLineTool
id: octopus.cwl
inputs:
- id: config
  doc: A config file, used to populate command line options
  type: string
  inputBinding:
    prefix: --config
- id: debug
  doc: '[=arg(="octopus_debug.log")]  Writes verbose debug information to  debug.log
    in the working directory'
  type: boolean
  inputBinding:
    prefix: --debug
- id: trace
  doc: '[=arg(="octopus_trace.log")]  Writes very verbose debug information  to trace.log
    in the working directory'
  type: boolean
  inputBinding:
    prefix: --trace
- id: fast
  doc: Turns off some features to improve  runtime, at the cost of decreased  calling
    accuracy. Equivalent to '-a off -l minimal -x 50`
  type: boolean
  inputBinding:
    prefix: --fast
- id: very_fast
  doc: The same as fast but also disables  inactive flank scoring
  type: boolean
  inputBinding:
    prefix: --very-fast
- id: w
  doc: '[ --working-directory ] arg        Sets the working directory'
  type: boolean
  inputBinding:
    prefix: -w
- id: threads
  doc: '[=arg(=0)]                  Maximum number of threads to be used,  enabling
    this option with no argument  lets the application decide the number  of threads
    ands enables specific  algorithm parallelisation'
  type: boolean
  inputBinding:
    prefix: --threads
- id: x
  doc: '[ --max-reference-cache-footprint ] arg (=500MB) Maximum memory footprint
    for cached  reference sequence'
  type: boolean
  inputBinding:
    prefix: -X
- id: b
  doc: '[ --target-read-buffer-footprint ] arg (=6GB) None binding request to limit
    the  memory footprint of buffered read data'
  type: boolean
  inputBinding:
    prefix: -B
- id: max_open_read_files
  doc: (=250)      Limits the number of read files that  can be open simultaneously
  type: string
  inputBinding:
    prefix: --max-open-read-files
- id: target_working_memory
  doc: Target working memory footprint for  analysis not including read or  reference
    footprint
  type: string
  inputBinding:
    prefix: --target-working-memory
- id: temp_directory_prefix
  doc: (="octopus-temp") File name prefix of temporary directory for calling
  type: string
  inputBinding:
    prefix: --temp-directory-prefix
- id: r
  doc: '[ --reference ] arg                FASTA format reference genome file to  be
    analysed. Target regions will be  extracted from the reference index if  not provded
    explicitly'
  type: boolean
  inputBinding:
    prefix: -R
- id: i
  doc: '[ --reads ] arg                    Space-separated list of BAM/CRAM files  to
    be analysed. May be specified  multiple times'
  type: boolean
  inputBinding:
    prefix: -I
- id: i
  doc: '[ --reads-file ] arg               Files containing lists of BAM/CRAM  files,
    one per line, to be analysed'
  type: boolean
  inputBinding:
    prefix: -i
- id: one_based_indexing
  doc: Notifies that input regions are given  using one based indexing rather than  zero
    based
  type: boolean
  inputBinding:
    prefix: --one-based-indexing
- id: t
  doc: '[ --regions ] arg                  Space-separated list of regions  (chrom:begin-end)
    to be analysed. May  be specified multiple times'
  type: boolean
  inputBinding:
    prefix: -T
- id: t
  doc: '[ --regions-file ] arg             File containing a list of regions  (chrom:begin-end),
    one per line, to be  analysed'
  type: boolean
  inputBinding:
    prefix: -t
- id: k
  doc: '[ --skip-regions ] arg             Space-separated list of regions  (chrom:begin-end)
    to skip May be  specified multiple times'
  type: boolean
  inputBinding:
    prefix: -K
- id: k
  doc: '[ --skip-regions-file ] arg        File of regions (chrom:begin-end), one  per
    line, to skip'
  type: boolean
  inputBinding:
    prefix: -k
- id: s
  doc: '[ --samples ] arg                  Space-separated list of sample names to
    analyse'
  type: boolean
  inputBinding:
    prefix: -S
- id: s
  doc: '[ --samples-file ] arg             File of sample names to analyse, one  per
    line, which must be a subset of the samples that appear in the read files'
  type: boolean
  inputBinding:
    prefix: -s
- id: ignore_unmapped_contigs
  doc: Ignore any contigs that are not present in the read files
  type: boolean
  inputBinding:
    prefix: --ignore-unmapped-contigs
- id: pedigree
  doc: PED file containing sample pedigree
  type: string
  inputBinding:
    prefix: --pedigree
- id: o
  doc: '[ --output ] arg                   File to where output is written. If  unspecified,
    calls are written to  stdout'
  type: boolean
  inputBinding:
    prefix: -o
- id: contig_output_order
  doc: (=asInReferenceIndex) The order contigs should be written to  the output
  type: string
  inputBinding:
    prefix: --contig-output-order
- id: sites_only
  doc: Only reports call sites (i.e. without  sample genotype information)
  type: boolean
  inputBinding:
    prefix: --sites-only
- id: legacy
  doc: Outputs a legacy version of the final  callset in addition to the native  version
  type: boolean
  inputBinding:
    prefix: --legacy
- id: re_genotype
  doc: VCF file specifying calls to  regenotype, only sites in this files  will appear
    in the final output
  type: string
  inputBinding:
    prefix: --regenotype
- id: bam_out
  doc: Output realigned BAM files
  type: string
  inputBinding:
    prefix: --bamout
- id: full_bam_out
  doc: Output all reads when producing  realigned bam outputs rather than just  variant
    read minibams
  type: boolean
  inputBinding:
    prefix: --full-bamout
- id: data_profile
  doc: Output a profile of polymorphisms and  errors found in the data
  type: string
  inputBinding:
    prefix: --data-profile
- id: read_filtering
  doc: (=1)             Enable all read filters
  type: string
  inputBinding:
    prefix: --read-filtering
- id: consider_unmapped_reads
  doc: Allows reads marked as unmapped to be  used for calling
  type: boolean
  inputBinding:
    prefix: --consider-unmapped-reads
- id: min_mapping_quality
  doc: (=20)       Minimum read mapping quality required  to consider a read for calling
  type: string
  inputBinding:
    prefix: --min-mapping-quality
- id: good_base_quality
  doc: (=20)         Base quality threshold used by  min-good-bases and min-good-base-fracti
    on filters
  type: string
  inputBinding:
    prefix: --good-base-quality
- id: min_good_base_fraction
  doc: '[=arg(=0.5)] Base quality threshold used by  min-good-bases filter'
  type: boolean
  inputBinding:
    prefix: --min-good-base-fraction
- id: min_good_bases
  doc: (=20)            Minimum number of bases with quality  min-base-quality before
    read is  considered
  type: string
  inputBinding:
    prefix: --min-good-bases
- id: allow_qc_fails
  doc: Filters reads marked as QC failed
  type: boolean
  inputBinding:
    prefix: --allow-qc-fails
- id: min_read_length
  doc: Filters reads shorter than this
  type: string
  inputBinding:
    prefix: --min-read-length
- id: max_read_length
  doc: Filter reads longer than this
  type: string
  inputBinding:
    prefix: --max-read-length
- id: allow_marked_duplicates
  doc: Allows reads marked as duplicate in  alignment record
  type: boolean
  inputBinding:
    prefix: --allow-marked-duplicates
- id: allow_octopus_duplicates
  doc: Allows reads considered duplicates by  octopus
  type: boolean
  inputBinding:
    prefix: --allow-octopus-duplicates
- id: allow_secondary_alignments
  doc: Allows reads marked as secondary  alignments
  type: boolean
  inputBinding:
    prefix: --allow-secondary-alignments
- id: allow_supplementary_alignments
  doc: Allows reads marked as supplementary  alignments
  type: boolean
  inputBinding:
    prefix: --allow-supplementary-alignments
- id: no_reads_with_unmapped_segments
  doc: Filter reads with unmapped template  segments to be used for calling
  type: boolean
  inputBinding:
    prefix: --no-reads-with-unmapped-segments
- id: no_reads_with_distant_segments
  doc: Filter reads with template segments  that are on different contigs
  type: boolean
  inputBinding:
    prefix: --no-reads-with-distant-segments
- id: no_adapter_contaminated_reads
  doc: Filter reads with possible adapter  contamination
  type: boolean
  inputBinding:
    prefix: --no-adapter-contaminated-reads
- id: disable_downsampling
  doc: Disables downsampling
  type: boolean
  inputBinding:
    prefix: --disable-downsampling
- id: down_sample_above
  doc: (=1000)        Downsample reads in regions where  coverage is over this
  type: string
  inputBinding:
    prefix: --downsample-above
- id: down_sample_target
  doc: (=500)        The target coverage for the downsampler
  type: string
  inputBinding:
    prefix: --downsample-target
- id: g
  doc: '[ --raw-cigar-candidate-generator ] arg (=1) Enable candidate generation from
    raw  read alignments (CIGAR strings)'
  type: boolean
  inputBinding:
    prefix: -g
- id: repeat_candidate_generator
  doc: (=1) Enable candidate generation from  adjusted read alignments (CIGAR  strings)
    around tandem repeats
  type: string
  inputBinding:
    prefix: --repeat-candidate-generator
- id: a
  doc: '[ --assembly-candidate-generator ] arg (=1) Enable candidate generation using
    local re-assembly'
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: '[ --source-candidates ] arg        Variant file paths containing known  variants.
    These variants will  automatically become candidates'
  type: boolean
  inputBinding:
    prefix: -c
- id: source_candidates_file
  doc: Files containing lists of source  candidate variant files
  type: string
  inputBinding:
    prefix: --source-candidates-file
- id: min_source_quality
  doc: '[=arg(=2)]       Only variants with quality above this  value are considered
    for candidate  generation'
  type: boolean
  inputBinding:
    prefix: --min-source-quality
- id: use_filtered_source_candidates
  doc: (=0) Use variants from source VCF records  that have been filtered
  type: string
  inputBinding:
    prefix: --use-filtered-source-candidates
- id: min_base_quality
  doc: (=20)          Only bases with quality above this  value are considered for
    candidate  generation
  type: string
  inputBinding:
    prefix: --min-base-quality
- id: min_supporting_reads
  doc: '[=arg(=2)]     Minimum number of reads that must  support a variant if it
    is to be  considered a candidate. By default  octopus will automatically determine  this
    value'
  type: boolean
  inputBinding:
    prefix: --min-supporting-reads
- id: max_variant_size
  doc: (=2000)        Maximum candidate variant size to  consider (in region space)
  type: string
  inputBinding:
    prefix: --max-variant-size
- id: km_er_sizes
  doc: (=10 15 20)          Kmer sizes to use for local assembly
  type: string
  inputBinding:
    prefix: --kmer-sizes
- id: num_fall_back_km_ers
  doc: (=10)        How many local assembly fallback kmer  sizes to use if the default
    sizes fail
  type: string
  inputBinding:
    prefix: --num-fallback-kmers
- id: fall_back_km_er_gap
  doc: (=10)         The gap size used to generate local  assembly fallback kmers
  type: string
  inputBinding:
    prefix: --fallback-kmer-gap
- id: max_region_to_assemble
  doc: (=400)   The maximum region size that can be  used for local assembly
  type: string
  inputBinding:
    prefix: --max-region-to-assemble
- id: max_assemble_region_overlap
  doc: (=200) The maximum number of bases allowed to  overlap assembly regions
  type: string
  inputBinding:
    prefix: --max-assemble-region-overlap
- id: assemble_all
  doc: Forces all regions to be assembled
  type: boolean
  inputBinding:
    prefix: --assemble-all
- id: assembler_mask_base_quality
  doc: (=10) Aligned bases with quality less than  this will be converted to reference  before
    being inserted into the De  Bruijn graph
  type: string
  inputBinding:
    prefix: --assembler-mask-base-quality
- id: min_km_er_prune
  doc: (=2)             Minimum number of read observations to  keep a kmer in the
    assembly graph  before bubble extraction
  type: string
  inputBinding:
    prefix: --min-kmer-prune
- id: max_bubbles
  doc: (=30)               Maximum number of bubbles to extract  from the assembly
    graph
  type: string
  inputBinding:
    prefix: --max-bubbles
- id: min_bubble_score
  doc: (=2)           Minimum bubble score that will be  extracted from the assembly
    graph
  type: string
  inputBinding:
    prefix: --min-bubble-score
- id: protect_reference_haplotype
  doc: (=1) Protect the reference haplotype from  filtering
  type: string
  inputBinding:
    prefix: --protect-reference-haplotype
- id: c
  doc: '[ --caller ] arg (=population)     Which of the octopus callers to use'
  type: boolean
  inputBinding:
    prefix: -C
- id: p
  doc: '[ --organism-ploidy ] arg (=2)     All contigs with unspecified ploidies  are
    assumed the organism ploidy'
  type: boolean
  inputBinding:
    prefix: -P
- id: p
  doc: '[ --contig-ploidies ] arg (=Y=1 chrY=1 MT=1 chrM=1) Space-separated list of
    contig  (contig=ploidy) or sample contig  (sample:contig=ploidy) ploidies'
  type: boolean
  inputBinding:
    prefix: -p
- id: contig_plo_i_dies_file
  doc: File containing a list of contig  (contig=ploidy) or sample contig  (sample:contig=ploidy)
    ploidies, one  per line
  type: string
  inputBinding:
    prefix: --contig-ploidies-file
- id: min_variant_posterior
  doc: (=1)      Report variant alleles with posterior  probability (phred scale)
    greater than  this
  type: string
  inputBinding:
    prefix: --min-variant-posterior
- id: ref_call
  doc: '[=arg(=blocked)]            Caller will report reference confidence calls
    for each position (positional),  or in automatically sized blocks  (blocked)'
  type: boolean
  inputBinding:
    prefix: --refcall
- id: ref_call_block_merge_threshold
  doc: (=10) Threshold to merge adjacent refcall  positions when using blocked refcalling
  type: string
  inputBinding:
    prefix: --refcall-block-merge-threshold
- id: min_ref_call_posterior
  doc: (=2)      Report reference alleles with posterior probability (phred scale)
    greater than  this
  type: string
  inputBinding:
    prefix: --min-refcall-posterior
- id: z
  doc: '[ --snp-heterozygosity ] arg (=0.001) Germline SNP heterozygosity for the  given
    samples'
  type: boolean
  inputBinding:
    prefix: -z
- id: snp_heterozygosity_stdev
  doc: (=0.01) Standard deviation of the germline SNP  heterozygosity used for the
    given  samples
  type: string
  inputBinding:
    prefix: --snp-heterozygosity-stdev
- id: y
  doc: '[ --indel-heterozygosity ] arg (=0.0001) Germline indel heterozygosity for
    the  given samples'
  type: boolean
  inputBinding:
    prefix: -y
- id: use_uniform_genotype_priors
  doc: Use a uniform prior model when  calculating genotype posteriors
  type: boolean
  inputBinding:
    prefix: --use-uniform-genotype-priors
- id: max_genotypes
  doc: (=5000)           The maximum number of genotypes to  evaluate
  type: string
  inputBinding:
    prefix: --max-genotypes
- id: max_joint_genotypes
  doc: (=1000000)  The maximum number of joint genotype  vectors to consider when
    computing  joint genotype posterior probabilities
  type: string
  inputBinding:
    prefix: --max-joint-genotypes
- id: use_independent_genotype_priors
  doc: Use independent genotype priors for  joint calling
  type: boolean
  inputBinding:
    prefix: --use-independent-genotype-priors
- id: model_posterior
  doc: Calculate model posteriors for every  call
  type: string
  inputBinding:
    prefix: --model-posterior
- id: inactive_flank_scoring
  doc: (=1)     Disables additional calculation to  adjust alignment score when there
    are  inactive candidates in haplotype  flanking regions
  type: string
  inputBinding:
    prefix: --inactive-flank-scoring
- id: model_mapping_quality
  doc: (=1)      Include the read mapping quality in the haplotype likelihood calculation
  type: string
  inputBinding:
    prefix: --model-mapping-quality
- id: sequence_error_model
  doc: (=PCR-free.HiSeq-2500) The sequencer error model to use
  type: string
  inputBinding:
    prefix: --sequence-error-model
- id: max_vb_seeds
  doc: (=12)              Maximum number of seeds to use for  Variational Bayes algorithms
  type: string
  inputBinding:
    prefix: --max-vb-seeds
- id: l
  doc: '[ --phasing-level ] arg (=normal)  Level of phasing - longer range phasing
    can improve calling accuracy at the  cost of runtime speed. Possible values  are:
    minimal, conservative, moderate,  normal, aggressive'
  type: boolean
  inputBinding:
    prefix: -l
- id: min_phase_score
  doc: (=10)           Minimum phase score (phred scale)  required to report sites
    as phased
  type: string
  inputBinding:
    prefix: --min-phase-score
- id: f
  doc: '[ --call-filtering ] arg (=1)      Turn variant call filtering on or off'
  type: boolean
  inputBinding:
    prefix: -f
- id: filter_expression
  doc: (=QUAL < 10 | MQ < 10 | MP < 10 | AF < 0.05 | SB > 0.98 | BQ < 15 | DP < 1)
    Boolean expression to use to filter  variant calls
  type: string
  inputBinding:
    prefix: --filter-expression
- id: somatic_filter_expression
  doc: (=QUAL < 2 | GQ < 20 | MQ < 30 | SMQ < 40 | SB > 0.9 | SD > 0.9 | BQ < 20 |
    DP < 3 | MF > 0.2 | NC > 1 | FRF > 0.5) Boolean expression to use to filter  somatic
    variant calls
  type: string
  inputBinding:
    prefix: --somatic-filter-expression
- id: de_novo_filter_expression
  doc: (=QUAL < 50 | PP < 40 | GQ < 20 | MQ < 30 | AF < 0.1 | SB > 0.95 | BQ < 20
    | DP < 10 | DC > 1 | MF > 0.2 | FRF > 0.5 | MP < 30 | MQ0 > 2) Boolean expression
    to use to filter  somatic variant calls
  type: string
  inputBinding:
    prefix: --denovo-filter-expression
- id: ref_call_filter_expression
  doc: (=QUAL < 2 | GQ < 20 | MQ < 10 | DP < 10 | MF > 0.2) Boolean expression to
    use to filter  homozygous reference calls
  type: string
  inputBinding:
    prefix: --refcall-filter-expression
- id: use_calling_reads_for_filtering
  doc: (=0) Use the original reads used for variant calling for filtering
  type: string
  inputBinding:
    prefix: --use-calling-reads-for-filtering
- id: keep_unfiltered_calls
  doc: Keep a copy of unfiltered calls
  type: boolean
  inputBinding:
    prefix: --keep-unfiltered-calls
- id: annotations
  doc: '[=arg(=active)]         Annotations to write to final VCF'
  type: boolean
  inputBinding:
    prefix: --annotations
- id: filter_vcf
  doc: Filter the given Octopus VCF without  calling
  type: string
  inputBinding:
    prefix: --filter-vcf
- id: forest_file
  doc: Trained Ranger random forest file
  type: string
  inputBinding:
    prefix: --forest-file
- id: somatic_forest_file
  doc: Trained Ranger random forest file for  somatic variants
  type: string
  inputBinding:
    prefix: --somatic-forest-file
outputs: []
cwlVersion: v1.1
baseCommand:
- octopus
