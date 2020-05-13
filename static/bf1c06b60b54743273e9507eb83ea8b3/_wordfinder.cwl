class: CommandLineTool
id: _wordfinder.cwl
inputs:
- id: gap_open
  doc: float      [10.0 for any sequence type] Gap opening penalty (Number from 0.000
    to 1000.000)
  type: boolean
  inputBinding:
    prefix: -gapopen
- id: gap_extend
  doc: float      [0.5 for any sequence type] Gap extension penalty (Number from 0.000
    to 10.000)
  type: boolean
  inputBinding:
    prefix: -gapextend
outputs: []
cwlVersion: v1.1
baseCommand:
- _wordfinder
