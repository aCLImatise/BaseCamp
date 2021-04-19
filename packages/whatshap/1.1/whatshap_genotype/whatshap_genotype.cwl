class: CommandLineTool
id: whatshap_genotype.cwl
inputs:
- id: in_output
  doc: "Output VCF file. Add .gz to the file name to get\ncompressed output. If omitted,\
    \ use standard output."
  type: File?
  inputBinding:
    prefix: --output
- id: in_reference
  doc: "Reference file. Provide this to detect alleles through\nre-alignment. If no\
    \ index (.fai) exists, it will be\ncreated"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_max_coverage
  doc: 'Reduce coverage to at most MAXCOV (default: 15).'
  type: long?
  inputBinding:
    prefix: --max-coverage
- id: in_mapping_quality
  doc: 'Minimum mapping quality (default: 20)'
  type: long?
  inputBinding:
    prefix: --mapping-quality
- id: in_indels
  doc: 'Also genotype indels (default: genotype only SNPs)'
  type: boolean?
  inputBinding:
    prefix: --indels
- id: in_ignore_read_groups
  doc: "Ignore read groups in BAM header and assume all reads\ncome from the same\
    \ sample."
  type: boolean?
  inputBinding:
    prefix: --ignore-read-groups
- id: in_sample
  doc: "Name of a sample to genotype. If not given, all\nsamples in the input VCF\
    \ are genotyped. Can be used\nmultiple times."
  type: string?
  inputBinding:
    prefix: --sample
- id: in_chromosome
  doc: "Name of chromosome to genotyped. If not given, all\nchromosomes in the input\
    \ VCF are genotyped. Can be\nused multiple times."
  type: string?
  inputBinding:
    prefix: --chromosome
- id: in_gt_qual_threshold
  doc: "Phred scaled error probability threshold used for\ngenotyping (default: 0).\
    \ Must be at least 0. If error\nprobability of genotype is higher, genotype ./.\
    \ is\noutput."
  type: long?
  inputBinding:
    prefix: --gt-qual-threshold
- id: in_no_priors
  doc: "Skip initial prior genotyping and use uniform priors\n(default: False)."
  type: boolean?
  inputBinding:
    prefix: --no-priors
- id: in_prior_output
  doc: output prior genotype likelihoods to the given file.
  type: File?
  inputBinding:
    prefix: --prioroutput
- id: in_overhang
  doc: "When --reference is used, extend alignment by this\nmany bases to left and\
    \ right when realigning (default:\n10)."
  type: long?
  inputBinding:
    prefix: --overhang
- id: in_constant
  doc: "This constant is used to regularize the priors\n(default: 0)."
  type: long?
  inputBinding:
    prefix: --constant
- id: in_affine_gap
  doc: "When detecting alleles through re-alignment, use\naffine gap costs (EXPERIMENTAL)."
  type: boolean?
  inputBinding:
    prefix: --affine-gap
- id: in_gap_start
  doc: "gap starting penalty in case affine gap costs are used\n(default: 10)."
  type: long?
  inputBinding:
    prefix: --gap-start
- id: in_gap_extend
  doc: "gap extend penalty in case affine gap costs are used\n(default: 7)."
  type: long?
  inputBinding:
    prefix: --gap-extend
- id: in_mismatch
  doc: "mismatch cost in case affine gap costs are used\n(default: 15)"
  type: long?
  inputBinding:
    prefix: --mismatch
- id: in_ped
  doc: "/FAM         Use pedigree information in PED file to improve\ngenotyping (switches\
    \ to PedMEC algorithm). Columns 2,\n3, 4 must refer to child, mother, and father\
    \ sample\nnames as used in the VCF and BAM. Other columns are\nignored (EXPERIMENTAL)."
  type: File?
  inputBinding:
    prefix: --ped
- id: in_recomb_rate
  doc: "Recombination rate in cM/Mb (used with --ped). If\ngiven, a constant recombination\
    \ rate is assumed\n(default: 1.26cM/Mb)."
  type: double?
  inputBinding:
    prefix: --recombrate
- id: in_gen_map
  doc: "File with genetic map (used with --ped) to be used\ninstead of constant recombination\
    \ rate, i.e. overrides\noption --recombrate."
  type: File?
  inputBinding:
    prefix: --genmap
- id: in_use_ped_samples
  doc: "Only work on samples mentioned in the provided PED\nfile.\n"
  type: boolean?
  inputBinding:
    prefix: --use-ped-samples
- id: in_vcf
  doc: "VCF file with variants to be genotyped (can be gzip-\ncompressed)"
  type: string
  inputBinding:
    position: 0
- id: in_phase_input
  doc: "BAM or VCF file(s) with phase information, either\nthrough sequencing reads\
    \ (BAM) or through phased\nblocks (VCF)"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output VCF file. Add .gz to the file name to get\ncompressed output. If omitted,\
    \ use standard output."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_prior_output
  doc: output prior genotype likelihoods to the given file.
  type: File?
  outputBinding:
    glob: $(inputs.in_prior_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/whatshap:1.1--py39h7cff6ad_0
cwlVersion: v1.1
baseCommand:
- whatshap
- genotype
