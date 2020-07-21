class: CommandLineTool
id: ../../../interop_index_summary.cwl
inputs:
- id: csv
  doc: '[0]: Format output as CSV only'
  type: boolean
  inputBinding:
    prefix: --csv
- id: option_one
  doc: ''
  type: string
  inputBinding:
    prefix: --option1
- id: option_two
  doc: ''
  type: string
  inputBinding:
    prefix: --option2
- id: run_folder
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- interop_index-summary
