class: CommandLineTool
id: cipresrun.cwl
inputs:
- id: in_t
  doc: \
  type: string?
  inputBinding:
    prefix: -t
- id: in_paramnameparamvalue_
  doc: <paramname=paramvalue> [-p <paramname=paramvalue>] \
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_i
  doc: \
  type: File?
  inputBinding:
    prefix: -i
- id: in_y
  doc: \
  type: string?
  inputBinding:
    prefix: -y
- id: in_outnameoutpath_
  doc: <out.name=/out/path> [-o <out.name=/out/path>] \
  type: File?
  inputBinding:
    prefix: -o
- id: in_w
  doc: \
  type: Directory?
  inputBinding:
    prefix: -w
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outnameoutpath_
  doc: <out.name=/out/path> [-o <out.name=/out/path>] \
  type: File?
  outputBinding:
    glob: $(inputs.in_outnameoutpath_)
hints: []
cwlVersion: v1.1
baseCommand:
- cipresrun
