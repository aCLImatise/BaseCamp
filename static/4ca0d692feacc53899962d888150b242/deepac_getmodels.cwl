class: CommandLineTool
id: deepac_getmodels.cwl
inputs:
- id: in_debug_tf
  doc: ''
  type: string?
  inputBinding:
    prefix: --debug-tf
- id: in_debug_no_eager
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --debug-no-eager
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_deep_ac
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- deepac
- getmodels
