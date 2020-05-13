class: CommandLineTool
id: phmmer_seqfile.cwl
inputs:
- id: seq_db
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- phmmer
- seqfile
