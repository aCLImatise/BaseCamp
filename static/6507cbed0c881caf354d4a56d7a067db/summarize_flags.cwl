class: CommandLineTool
id: summarize_flags.py.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: id
  doc: ''
  type: string
  inputBinding:
    prefix: -id
- id: os
  doc: ''
  type: string
  inputBinding:
    prefix: -os
outputs: []
cwlVersion: v1.1
baseCommand:
- summarize_flags.py
