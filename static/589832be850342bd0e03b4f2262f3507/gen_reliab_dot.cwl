class: CommandLineTool
id: gen_reliab_dot.pl.cwl
inputs:
- id: f
  doc: reliability file
  type: File
  inputBinding:
    prefix: -f
- id: a
  doc: alignment file
  type: File
  inputBinding:
    prefix: -a
- id: s
  doc: probabilities
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- gen-reliab-dot.pl
