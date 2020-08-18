class: CommandLineTool
id: ../../../glam2format.cwl
inputs:
- id: my_format
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: my_motif_dot_glam_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- glam2format
