class: CommandLineTool
id: ../../../consensus.cwl
inputs:
- id: reads
  doc: ''
  type: string
  inputBinding:
    prefix: --reads
- id: contigs
  doc: ''
  type: string
  inputBinding:
    prefix: --contigs
outputs: []
cwlVersion: v1.1
baseCommand:
- consensus
