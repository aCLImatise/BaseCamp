class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sort_psl.cwl
inputs:
- id: validate_contigs_blat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: contigs_dot_fa_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- sort_psl
