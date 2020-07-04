class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/megahit_core_popcnt_filterbylen.cwl
inputs:
- id: cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: contigs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- megahit_core_popcnt
- filterbylen
