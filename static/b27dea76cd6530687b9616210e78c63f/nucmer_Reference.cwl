class: CommandLineTool
id: nucmer_Reference.cwl
inputs:
- id: reference
  doc: Set the input reference multi-FASTA filename
  type: string
  inputBinding:
    position: 0
- id: query
  doc: Set the input query multi-FASTA filename
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- nucmer
- Reference
