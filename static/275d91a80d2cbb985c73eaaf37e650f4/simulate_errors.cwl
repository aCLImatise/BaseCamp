class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/simulate_errors.py_output_fasta.cwl
inputs:
- id: e
  doc: ''
  type: string
  inputBinding:
    prefix: -e
- id: w
  doc: ''
  type: string
  inputBinding:
    prefix: -w
- id: simulate_errors_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- simulate_errors.py
- output_fasta
