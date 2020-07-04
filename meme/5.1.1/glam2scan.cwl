class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/glam2scan.cwl
inputs:
- id: alphabet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: my_motif_dot_glam_two
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: my_seqs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- glam2scan
