class: CommandLineTool
id: jstatd.cwl
inputs:
- id: in_n
  doc: ''
  type: string?
  inputBinding:
    prefix: -n
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_nr
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -nr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jstatd
