class: CommandLineTool
id: upload_genomes.py.cwl
inputs:
- id: select_tax_apy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- upload_genomes.py
