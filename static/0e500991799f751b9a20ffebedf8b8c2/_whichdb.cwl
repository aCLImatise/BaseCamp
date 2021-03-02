class: CommandLineTool
id: _whichdb.cwl
inputs:
- id: in_get
  doc: toggle     [N] Retrieve sequences
  type: boolean?
  inputBinding:
    prefix: -get
- id: in_show_all
  doc: boolean    [N] Show failed attempts
  type: boolean?
  inputBinding:
    prefix: -showall
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _whichdb
