class: CommandLineTool
id: redbuild.cwl
inputs:
- id: in_b
  doc: '# (required)'
  type: string?
  inputBinding:
    prefix: -b
- id: in_m
  doc: '# (required)'
  type: long?
  inputBinding:
    prefix: -m
- id: in_r
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_g
  doc: ''
  type: long?
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- redbuild
