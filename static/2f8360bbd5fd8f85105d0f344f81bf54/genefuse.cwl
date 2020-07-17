class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genefuse.cwl
inputs:
- id: read_one
  doc: ''
  type: string
  inputBinding:
    prefix: --read1
- id: fusion
  doc: ''
  type: string
  inputBinding:
    prefix: --fusion
- id: ref
  doc: ''
  type: string
  inputBinding:
    prefix: --ref
outputs: []
cwlVersion: v1.1
baseCommand:
- genefuse
