class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/simulate_sequencing_simple.py_output_fastq.cwl
inputs:
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: simulate_sequencing_simple_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- simulate_sequencing_simple.py
- output_fastq
