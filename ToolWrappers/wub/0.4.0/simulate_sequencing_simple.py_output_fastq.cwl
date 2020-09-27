class: CommandLineTool
id: simulate_sequencing_simple.py_output_fastq.cwl
inputs:
- id: in_m
  doc: ''
  type: long
  inputBinding:
    prefix: -m
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_simulate_sequencing_simple_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- simulate_sequencing_simple.py
- output_fastq
