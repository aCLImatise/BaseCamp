class: CommandLineTool
id: interop_summary.cwl
inputs:
- id: level
  doc: '[5]: Level of summary information: 0: total, 1: non-index, 2: Read, 3: Lane,
    4: Surface'
  type: boolean
  inputBinding:
    prefix: --level
- id: csv
  doc: '[0]: Format output as CSV only'
  type: boolean
  inputBinding:
    prefix: --csv
outputs: []
cwlVersion: v1.1
baseCommand:
- interop_summary
