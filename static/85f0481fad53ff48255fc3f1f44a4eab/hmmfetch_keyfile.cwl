class: CommandLineTool
id: hmmfetch_keyfile.cwl
inputs:
- id: in_index
  doc: ''
  type: File?
  inputBinding:
    prefix: --index
- id: in_f
  doc: ''
  type: File?
  inputBinding:
    prefix: -f
- id: in_hmm_fetch
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_key
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hmmfetch
- keyfile
