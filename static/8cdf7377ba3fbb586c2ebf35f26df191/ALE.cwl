class: CommandLineTool
id: ../../../ALE.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: alignments_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: s_vertical_line_b
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: am
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: assembly_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- ALE
