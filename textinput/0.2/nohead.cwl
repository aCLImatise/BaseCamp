class: CommandLineTool
id: nohead.cwl
inputs:
- id: lines
  doc: suppress NUM lines (default 1)
  type: string
  inputBinding:
    prefix: --lines
outputs: []
cwlVersion: v1.1
baseCommand:
- nohead
