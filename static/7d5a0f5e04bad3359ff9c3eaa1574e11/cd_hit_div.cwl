class: CommandLineTool
id: cd_hit_div.cwl
inputs:
- id: in_i
  doc: ', required'
  type: string?
  inputBinding:
    prefix: -i
- id: in_o
  doc: ', required'
  type: string?
  inputBinding:
    prefix: -o
- id: in_div
  doc: of divide, required
  type: long?
  inputBinding:
    prefix: -div
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cd-hit-div
