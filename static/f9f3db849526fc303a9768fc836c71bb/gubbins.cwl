class: CommandLineTool
id: gubbins.cwl
inputs:
- id: alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: r
  doc: detect recombinations mode
  type: boolean
  inputBinding:
    prefix: -r
- id: t
  doc: Newick tree file
  type: boolean
  inputBinding:
    prefix: -t
- id: v
  doc: VCF file
  type: boolean
  inputBinding:
    prefix: -v
- id: f
  doc: Original Multifasta file
  type: boolean
  inputBinding:
    prefix: -f
- id: m
  doc: Min SNPs for identifying a recombination block
  type: boolean
  inputBinding:
    prefix: -m
- id: a
  doc: Min window size
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: Max window size
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- gubbins
