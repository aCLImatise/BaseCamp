class: CommandLineTool
id: ../../../whatshap_phase.cwl
inputs:
- id: output
  doc: Output VCF file. Add .gz to the file name to get compressed output. If omitted,
    use standard output.
  type: string
  inputBinding:
    prefix: --output
- id: reference
  doc: Reference file. Provide this to detect alleles through re-alignment. If no
    index (.fai) exists, it will be created
  type: string
  inputBinding:
    prefix: --reference
- id: tag
  doc: 'Store phasing information with PS tag (standardized) or HP tag (used by GATK
    ReadBackedPhasing) (default: PS)'
  type: string
  inputBinding:
    prefix: --tag
- id: output_read_list
  doc: Write reads that have been used for phasing to FILE.
  type: File
  inputBinding:
    prefix: --output-read-list
- id: algorithm
  doc: 'Choose an algorithm from whatshap or hapchat (default: whatshap)'
  type: string
  inputBinding:
    prefix: --algorithm
- id: merge_reads
  doc: 'Merge reads which are likely to come from the same haplotype (default: do
    not merge reads)'
  type: boolean
  inputBinding:
    prefix: --merge-reads
- id: max_coverage
  doc: 'Coverage reduction parameter in the core phasing algorithm. Phasing quality
    may improve slightly if this is increased, but runtime increases exponentially!
    Do not increase beyond 20. (default: 15)'
  type: long
  inputBinding:
    prefix: --max-coverage
- id: mapping_quality
  doc: 'Minimum mapping quality (default: 20)'
  type: string
  inputBinding:
    prefix: --mapping-quality
- id: indels
  doc: 'Also phase indels (default: do not phase indels)'
  type: boolean
  inputBinding:
    prefix: --indels
- id: ignore_read_groups
  doc: Ignore read groups in BAM/CRAM header and assume all reads come from the same
    sample.
  type: boolean
  inputBinding:
    prefix: --ignore-read-groups
- id: sample
  doc: Name of a sample to phase. If not given, all samples in the input VCF are phased.
    Can be used multiple times.
  type: string
  inputBinding:
    prefix: --sample
- id: chromosome
  doc: Name of chromosome to phase. If not given, all chromosomes in the input VCF
    are phased. Can be used multiple times.
  type: string
  inputBinding:
    prefix: --chromosome
- id: error_rate
  doc: 'The probability that a nucleotide is wrong in read merging model (default:
    0.15).'
  type: string
  inputBinding:
    prefix: --error-rate
- id: maximum_error_rate
  doc: 'The maximum error rate of any edge of the read merging graph before discarding
    it (default: 0.25).'
  type: string
  inputBinding:
    prefix: --maximum-error-rate
- id: threshold
  doc: 'The threshold of the ratio between the probabilities that a pair of reads
    come from the same haplotype and different haplotypes in the read merging model
    (default: 1000000).'
  type: string
  inputBinding:
    prefix: --threshold
- id: negative_threshold
  doc: 'The threshold of the ratio between the probabilities that a pair of reads
    come from different haplotypes and the same haplotype in the read merging model
    (default: 1000).'
  type: string
  inputBinding:
    prefix: --negative-threshold
- id: full_genotyping
  doc: Completely re-genotype all variants based on read data, ignores all genotype
    data that might be present in the VCF (EXPERIMENTAL FEATURE).
  type: boolean
  inputBinding:
    prefix: --full-genotyping
- id: distrust_genotypes
  doc: Allow switching variants from hetero- to homozygous in an optimal solution
    (see documentation).
  type: boolean
  inputBinding:
    prefix: --distrust-genotypes
- id: include_homozygous
  doc: Also work on homozygous variants, which might be turned to heterozygous
  type: boolean
  inputBinding:
    prefix: --include-homozygous
- id: default_gq
  doc: Default genotype quality used as cost of changing a genotype when no genotype
    likelihoods are available (default 30)
  type: string
  inputBinding:
    prefix: --default-gq
- id: gl_regularize_r
  doc: Constant (float) to be used to regularize genotype likelihoods read from input
    VCF (default None).
  type: string
  inputBinding:
    prefix: --gl-regularizer
- id: changed_genotype_list
  doc: Write list of changed genotypes to FILE.
  type: File
  inputBinding:
    prefix: --changed-genotype-list
- id: ped
  doc: Use pedigree information in PED file to improve phasing (switches to PedMEC
    algorithm). Columns 2, 3, 4 must refer to child, mother, and father sample names
    as used in the VCF and BAM/CRAM. Other columns are ignored.
  type: string
  inputBinding:
    prefix: --ped
- id: recombination_list
  doc: Write putative recombination events to FILE.
  type: File
  inputBinding:
    prefix: --recombination-list
- id: recomb_rate
  doc: 'Recombination rate in cM/Mb (used with --ped). If given, a constant recombination
    rate is assumed (default: 1.26cM/Mb).'
  type: string
  inputBinding:
    prefix: --recombrate
- id: gen_map
  doc: File with genetic map (used with --ped) to be used instead of constant recombination
    rate, i.e. overrides option --recombrate.
  type: File
  inputBinding:
    prefix: --genmap
- id: no_genetic_haplo_typing
  doc: 'Do not merge blocks that are not connected by reads (i.e. solely based on
    genotype status). Default: when in --ped mode, merge all blocks that contain at
    least one homozygous genotype in at least one individual into one block.'
  type: boolean
  inputBinding:
    prefix: --no-genetic-haplotyping
- id: use_ped_samples
  doc: Only work on samples mentioned in the provided PED file.
  type: boolean
  inputBinding:
    prefix: --use-ped-samples
- id: vcf
  doc: VCF file with variants to be phased (can be gzip- compressed)
  type: string
  inputBinding:
    position: 0
- id: phase_input
  doc: BAM, CRAM or VCF file(s) with phase information, either through sequencing
    reads (BAM/CRAM) or through phased blocks (VCF)
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- whatshap
- phase
