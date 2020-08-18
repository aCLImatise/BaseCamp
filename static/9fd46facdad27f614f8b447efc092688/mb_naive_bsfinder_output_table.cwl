class: CommandLineTool
id: ../../../mb_naive_bsfinder_output_table.cwl
inputs:
- id: min_transitions
  doc: ''
  type: long
  inputBinding:
    prefix: --min_transitions
- id: mb_naive_bs_finder
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-naive-bsfinder
- output_table
