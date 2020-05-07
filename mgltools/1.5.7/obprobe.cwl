class: CommandLineTool
id: obprobe.cwl
inputs:
- id: s
  doc: step size
  type: string
  inputBinding:
    prefix: -s
- id: p
  doc: padding
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- obprobe
