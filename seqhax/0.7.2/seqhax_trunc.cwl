class: CommandLineTool
id: seqhax_trunc.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: l
  doc: Fixed (integer) length to truncate at.
  type: string
  inputBinding:
    prefix: -l
- id: p
  doc: Truncate at PROP * length bases
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- seqhax
- trunc
