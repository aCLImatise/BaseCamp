class: CommandLineTool
id: vispr.cwl
inputs:
- id: in_debug
  doc: Print debug info.
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vispr
