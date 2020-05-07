class: CommandLineTool
id: bedClip.cwl
inputs:
- id: input_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chrom_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: verbose
  doc: =2 - set to get list of lines clipped and why
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- bedClip
