class: CommandLineTool
id: ragtag_agpcheck.py.cwl
inputs:
- id: in_ragtag_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_agp_check
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_asm_one_dot_agp
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_as_mndot_agp
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ragtag:1.1.0--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- ragtag_agpcheck.py
