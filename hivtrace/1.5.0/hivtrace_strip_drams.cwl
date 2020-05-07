class: CommandLineTool
id: hivtrace_strip_drams.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- hivtrace_strip_drams
