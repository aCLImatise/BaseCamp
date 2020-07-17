class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vsnp_chromosome_reference.py.cwl
inputs:
- id: cwd
  doc: 'Optional: path to VCF files'
  type: string
  inputBinding:
    prefix: --cwd
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vsnp_chromosome_reference.py
