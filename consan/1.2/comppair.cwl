class: CommandLineTool
id: ../../../comppair.cwl
inputs:
- id: in_suppress_comparison_totals
  doc: ': suppress comparison totals'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_suppress_pair_alignment
  doc: ': suppress every pair alignment prediction output'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_turn_mathews_definition
  doc: ': turn on Mathews definition of paired'
  type: long
  inputBinding:
    prefix: -M
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- comppair
