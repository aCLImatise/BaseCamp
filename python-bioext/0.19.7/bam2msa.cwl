class: CommandLineTool
id: bam2msa.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2msa
