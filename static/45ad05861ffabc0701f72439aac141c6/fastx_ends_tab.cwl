class: CommandLineTool
id: ../../../fastx_ends_tab.py.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: input_fast_x
  doc: 'Input file (default: stdin).'
  type: string
  inputBinding:
    position: 0
- id: output_tsv
  doc: 'Output file (default: stdout).'
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fastx_ends_tab.py
