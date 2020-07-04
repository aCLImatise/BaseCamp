class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gen_reliab_dot.pl.cwl
inputs:
- id: reliability_file
  doc: reliability file
  type: File
  inputBinding:
    prefix: -f
- id: alignment_file
  doc: alignment file
  type: File
  inputBinding:
    prefix: -a
- id: probabilities
  doc: probabilities
  type: string
  inputBinding:
    prefix: -s
- id: prg_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gen-reliab-dot.pl
