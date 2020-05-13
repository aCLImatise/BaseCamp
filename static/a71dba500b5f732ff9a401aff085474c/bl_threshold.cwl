class: CommandLineTool
id: bl_threshold.cwl
inputs:
- id: n
  doc: non-negative length
  type: string
  inputBinding:
    prefix: -n
- id: s
  doc: file to print short reads to
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-threshold
