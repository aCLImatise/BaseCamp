class: CommandLineTool
id: ../../../cmfetch_cmfile.cwl
inputs:
- id: in_index
  doc: ''
  type: File
  inputBinding:
    prefix: --index
- id: in_f
  doc: ''
  type: File
  inputBinding:
    prefix: -f
- id: in_cm_fetch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_key
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_keyfile
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
- cmfetch
- cmfile
