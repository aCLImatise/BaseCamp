class: CommandLineTool
id: jdeprscan.cwl
inputs:
- id: in_release
  doc: '|7|8|9|10|11'
  type: long?
  inputBinding:
    prefix: --release
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- jdeprscan
