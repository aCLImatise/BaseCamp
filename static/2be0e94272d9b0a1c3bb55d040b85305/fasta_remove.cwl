class: CommandLineTool
id: ../../../fasta_remove.cwl
inputs:
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: -fasta
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta_remove
