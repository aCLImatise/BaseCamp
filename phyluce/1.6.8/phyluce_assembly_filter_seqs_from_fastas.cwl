class: CommandLineTool
id: phyluce_assembly_filter_seqs_from_fastas.cwl
inputs:
- id: proportion
  doc: Proportion of the median length that will serve as cut off (default=0.5)
  type: string
  inputBinding:
    prefix: --proportion
- id: count
  doc: Number of sequences per locus that will serve as cut off (default=4).
  type: string
  inputBinding:
    prefix: --count
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_filter_seqs_from_fastas
