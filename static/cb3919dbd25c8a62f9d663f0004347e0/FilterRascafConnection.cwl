class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/FilterRascafConnection.pl.cwl
inputs:
- id: evaluate_blast_dot_out
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ras_caf_cs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ras_caf_dot_out
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- FilterRascafConnection.pl
