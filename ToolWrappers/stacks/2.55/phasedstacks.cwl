class: CommandLineTool
id: phasedstacks.cwl
inputs:
- id: in_haplotypes
  doc: ': data were phased as RAD locus haplotypes.'
  type: boolean?
  inputBinding:
    prefix: --haplotypes
- id: in_d_prime_bin_size
  doc: ": size of buckets for binning SNPs at a particular distance to calculate the\
    \ mean D' value."
  type: boolean?
  inputBinding:
    prefix: --dprime-bin-size
- id: in_d_prime_threshold
  doc: ": if D' values fall above <val>, set the D' to 1, otherwise set D' to 0."
  type: long?
  inputBinding:
    prefix: --dprime-threshold
- id: in_skip_zeros
  doc: ": do not include D' values of zero in the D' output."
  type: boolean?
  inputBinding:
    prefix: --skip-zeros
- id: in_minor_allele_freq
  doc: ': specify a minimum minor allele frequency required to process a nucleotide
    site (0 < a < 0.5).'
  type: boolean?
  inputBinding:
    prefix: --minor-allele-freq
- id: in_min_inform_pairs
  doc: ": when building D' haplotype blocks, the minimum number of informative D'\
    \ measures to combine two blocks (default 0.9)."
  type: boolean?
  inputBinding:
    prefix: --min-inform-pairs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/stacks:2.55--he513fc3_0
cwlVersion: v1.1
baseCommand:
- phasedstacks
