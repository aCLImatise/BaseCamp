class: CommandLineTool
id: seqmerge_OUTPUT.cwl
inputs:
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_seq_merge
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqmerge
- OUTPUT
