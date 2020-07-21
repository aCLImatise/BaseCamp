class: CommandLineTool
id: ../../../convertToAtac.cwl
inputs:
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: one
  doc: ''
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: ''
  type: string
  inputBinding:
    prefix: '-2'
- id: asm_file_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: asm_file_two
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: matches_dot_sim_four_db
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: matches_dot_atac
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- convertToAtac
