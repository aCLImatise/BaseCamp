class: CommandLineTool
id: clm.cwl
inputs:
- id: in_nop
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nop
- id: in_mode
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- clm
