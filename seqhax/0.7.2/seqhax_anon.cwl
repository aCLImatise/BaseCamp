class: CommandLineTool
id: seqhax_anon.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: x
  doc: Use base-16 sequence IDs.
  type: boolean
  inputBinding:
    prefix: -x
- id: p
  doc: Treat reads as pairs, add /1 or /2 to headers.
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- seqhax
- anon
