class: CommandLineTool
id: overlapSelect.cwl
inputs:
- id: dropped
  doc: that were dropped to this file.
  type: File
  inputBinding:
    prefix: -dropped
- id: verbose
  doc: '> 1 prints some details,'
  type: string
  inputBinding:
    prefix: '- verbose'
outputs: []
cwlVersion: v1.1
baseCommand:
- overlapSelect
