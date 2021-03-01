class: CommandLineTool
id: igdiscover_dbdiff.cwl
inputs:
- id: in_color
  doc: "Whether to colorize output\n"
  type: string?
  inputBinding:
    prefix: --color
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_b
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- dbdiff
