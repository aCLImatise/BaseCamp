class: CommandLineTool
id: maf_print_chroms.py_refindex.cwl
inputs:
- id: in_program_dot
  doc: 'usage: /usr/local/bin/maf_print_chroms.py refindex [options]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0
cwlVersion: v1.1
baseCommand:
- maf_print_chroms.py
- refindex
