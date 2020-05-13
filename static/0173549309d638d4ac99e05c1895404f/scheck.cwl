class: CommandLineTool
id: scheck.cwl
inputs:
- id: s_test
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file_in
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- scheck
