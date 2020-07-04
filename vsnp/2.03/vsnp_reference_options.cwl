class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vsnp_reference_options.py.cwl
inputs:
- id: select_ref
  doc: 'Required: single read, R1 when Illumina read'
  type: string
  inputBinding:
    prefix: --select_ref
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
- vsnp_reference_options.py
