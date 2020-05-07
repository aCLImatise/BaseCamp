class: CommandLineTool
id: interop_index_summary.cwl
inputs:
- id: csv
  doc: '[0]: Format output as CSV only'
  type: boolean
  inputBinding:
    prefix: --csv
outputs: []
cwlVersion: v1.1
baseCommand:
- interop_index-summary
