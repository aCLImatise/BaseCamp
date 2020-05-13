class: CommandLineTool
id: sentieon_bwa_index.cwl
inputs:
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: index
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fasta
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- sentieon-bwa
- index
