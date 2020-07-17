class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/find_all_snps.py.cwl
inputs:
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- find_all_snps.py
