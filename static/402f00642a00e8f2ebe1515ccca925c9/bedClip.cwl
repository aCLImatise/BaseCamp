class: CommandLineTool
id: ../../../bedClip.cwl
inputs:
- id: truncate
  doc: '- truncate items that span ends of chrom instead of the default of dropping
    the items'
  type: boolean
  inputBinding:
    prefix: -truncate
- id: verbose
  doc: '- set to get list of lines clipped and why'
  type: string
  inputBinding:
    prefix: -verbose
- id: input_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bedClip
