class: CommandLineTool
id: hivtrace_strip_drams.cwl
inputs:
- id: in_d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hivtrace_strip_drams
