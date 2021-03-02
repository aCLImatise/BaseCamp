class: CommandLineTool
id: simulate_errors.py_input_fasta.cwl
inputs:
- id: in_w
  doc: ''
  type: string?
  inputBinding:
    prefix: -w
- id: in_e
  doc: ''
  type: string?
  inputBinding:
    prefix: -e
- id: in_simulate_errors_do_tpy
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
- simulate_errors.py
- input_fasta
