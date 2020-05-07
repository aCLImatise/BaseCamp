class: CommandLineTool
id: phasedstacks.cwl
inputs:
- id: skip_zeros
  doc: ": do not include D' values of zero in the D' output."
  type: boolean
  inputBinding:
    prefix: --skip-zeros
- id: minor_allele_freq
  doc: ': specify a minimum minor allele frequency required to process a nucleotide
    site (0 < a < 0.5).'
  type: boolean
  inputBinding:
    prefix: --minor-allele-freq
- id: min_inform_pairs
  doc: ": when building D' haplotype blocks, the minimum number of informative D'\
    \ measures to combine two blocks (default 0.9)."
  type: boolean
  inputBinding:
    prefix: --min-inform-pairs
outputs: []
cwlVersion: v1.1
baseCommand:
- phasedstacks
