class: CommandLineTool
id: SVcomp.cwl
inputs:
- id: in_first
  doc: ''
  type: File?
  inputBinding:
    prefix: --first
- id: in_ref
  doc: ''
  type: File?
  inputBinding:
    prefix: --ref
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SVcomp
