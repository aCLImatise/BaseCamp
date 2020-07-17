class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/add_errors.py_output_fasta.cwl
inputs:
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: add_errors_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- add_errors.py
- output_fasta
