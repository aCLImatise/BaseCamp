class: CommandLineTool
id: ../../../whatshap_genotype.cwl
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
- id: max_coverage
  doc: 'Reduce coverage to at most MAXCOV (default: 15).'
  type: long
  inputBinding:
    prefix: --max-coverage
- id: mapping_quality
  doc: 'Minimum mapping quality (default: 20)'
  type: string
  inputBinding:
    prefix: --mapping-quality
- id: indels
  doc: 'Also genotype indels (default: genotype only SNPs)'
  type: boolean
  inputBinding:
    prefix: --indels
- id: ignore_read_groups
  doc: Ignore read groups in BAM header and assume all reads come from the same sample.
  type: boolean
  inputBinding:
    prefix: --ignore-read-groups
- id: sample
  doc: Name of a sample to genotype. If not given, all samples in the input VCF are
    genotyped. Can be used multiple times.
  type: string
  inputBinding:
    prefix: --sample
- id: chromosome
  doc: Name of chromosome to genotyped. If not given, all chromosomes in the input
    VCF are genotyped. Can be used multiple times.
  type: string
  inputBinding:
    prefix: --chromosome
- id: gt_qual_threshold
  doc: 'Phred scaled error probability threshold used for genotyping (default: 0).
    Must be at least 0. If error probability of genotype is higher, genotype ./. is
    output.'
  type: string
  inputBinding:
    prefix: --gt-qual-threshold
- id: no_priors
  doc: 'Skip initial prior genotyping and use uniform priors (default: False).'
  type: boolean
  inputBinding:
    prefix: --no-priors
- id: prior_output
  doc: output prior genotype likelihoods to the given file.
  type: string
  inputBinding:
    prefix: --prioroutput
- id: overhang
  doc: 'When --reference is used, extend alignment by this many bases to left and
    right when realigning (default: 10).'
  type: string
  inputBinding:
    prefix: --overhang
- id: constant
  doc: 'This constant is used to regularize the priors (default: 0).'
  type: string
  inputBinding:
    prefix: --constant
- id: affine_gap
  doc: When detecting alleles through re-alignment, use affine gap costs (EXPERIMENTAL).
  type: boolean
  inputBinding:
    prefix: --affine-gap
- id: gap_start
  doc: 'gap starting penalty in case affine gap costs are used (default: 10).'
  type: string
  inputBinding:
    prefix: --gap-start
- id: gap_extend
  doc: 'gap extend penalty in case affine gap costs are used (default: 7).'
  type: string
  inputBinding:
    prefix: --gap-extend
- id: mismatch
  doc: 'mismatch cost in case affine gap costs are used (default: 15)'
  type: string
  inputBinding:
    prefix: --mismatch
- id: ped
  doc: Use pedigree information in PED file to improve genotyping (switches to PedMEC
    algorithm). Columns 2, 3, 4 must refer to child, mother, and father sample names
    as used in the VCF and BAM. Other columns are ignored (EXPERIMENTAL).
  type: string
  inputBinding:
    prefix: --ped
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
- id: use_ped_samples
  doc: Only work on samples mentioned in the provided PED file.
  type: boolean
  inputBinding:
    prefix: --use-ped-samples
- id: vcf
  doc: VCF file with variants to be genotyped (can be gzip- compressed)
  type: string
  inputBinding:
    position: 0
- id: phase_input
  doc: BAM or VCF file(s) with phase information, either through sequencing reads
    (BAM) or through phased blocks (VCF)
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- whatshap
- genotype
