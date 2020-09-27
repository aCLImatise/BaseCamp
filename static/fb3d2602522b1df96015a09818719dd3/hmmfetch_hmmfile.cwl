class: CommandLineTool
id: hmmfetch_hmmfile.cwl
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
- id: in_hmm_fetch
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
- hmmfetch
- hmmfile
