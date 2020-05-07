class: CommandLineTool
id: bwa_index.cwl
inputs:
- id: in_fasta
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- index
