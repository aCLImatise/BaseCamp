class: CommandLineTool
id: printenv.cwl
inputs:
- id: in_null
  doc: end each output line with NUL, not newline
  type: boolean
  inputBinding:
    prefix: --null
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- printenv
