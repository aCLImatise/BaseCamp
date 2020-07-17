class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gfapy_renumber.cwl
inputs:
- id: out
  doc: output GFA file [/dev/stdout]
  type: string
  inputBinding:
    prefix: --out
- id: gfa
  doc: input GFA file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gfapy-renumber
