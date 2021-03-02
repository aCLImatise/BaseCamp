class: CommandLineTool
id: simulate_sequencing_simple.py_input_fasta.cwl
inputs:
- id: in_m
  doc: ''
  type: long?
  inputBinding:
    prefix: -m
- id: in_n
  doc: ''
  type: string?
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- simulate_sequencing_simple.py
- input_fasta
