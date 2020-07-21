class: CommandLineTool
id: ../../../marvel.cwl
inputs:
- id: from
  doc: Bio import SeqIO
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- marvel
