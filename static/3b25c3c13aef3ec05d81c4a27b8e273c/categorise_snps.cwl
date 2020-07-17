class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/categorise_snps.py.cwl
inputs:
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: metadata
  doc: ''
  type: string
  inputBinding:
    prefix: --metadata
outputs: []
cwlVersion: v1.1
baseCommand:
- categorise_snps.py
