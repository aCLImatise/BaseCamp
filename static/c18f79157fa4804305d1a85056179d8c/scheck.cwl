class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/scheck.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
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
outputs: []
cwlVersion: v1.1
baseCommand:
- scheck
