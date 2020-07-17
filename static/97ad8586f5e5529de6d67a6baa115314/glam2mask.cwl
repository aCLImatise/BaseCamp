class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/glam2mask.cwl
inputs:
- id: my_motif_dot_glam_two
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: my_seqs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- glam2mask
