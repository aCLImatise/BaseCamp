class: CommandLineTool
id: ../../../gubbins.cwl
inputs:
- id: detect_recombinations_mode
  doc: detect recombinations mode
  type: boolean
  inputBinding:
    prefix: -r
- id: newick_tree_file
  doc: Newick tree file
  type: boolean
  inputBinding:
    prefix: -t
- id: vcf_file
  doc: VCF file
  type: boolean
  inputBinding:
    prefix: -v
- id: original_multifasta_file
  doc: Original Multifasta file
  type: boolean
  inputBinding:
    prefix: -f
- id: min_snps_identifying
  doc: Min SNPs for identifying a recombination block
  type: boolean
  inputBinding:
    prefix: -m
- id: min_window_size
  doc: Min window size
  type: boolean
  inputBinding:
    prefix: -a
- id: max_window_size
  doc: Max window size
  type: boolean
  inputBinding:
    prefix: -b
- id: alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gubbins
