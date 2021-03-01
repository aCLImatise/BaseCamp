class: CommandLineTool
id: quickmerge.cwl
inputs:
- id: in_hco
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -hco
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_q
  doc: ''
  type: string?
  inputBinding:
    prefix: -q
- id: in_d
  doc: ''
  type: File?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_d
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_d)
hints: []
cwlVersion: v1.1
baseCommand:
- quickmerge
