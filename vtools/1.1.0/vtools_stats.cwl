class: CommandLineTool
id: vtools_stats.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: Input VCF file  [required]
  type: File
  inputBinding:
    prefix: --input
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools-stats
