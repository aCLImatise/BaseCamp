class: CommandLineTool
id: refgenie_compare_GENOME2.cwl
inputs:
- id: in_e
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_skip_read_lock
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --skip-read-lock
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_ref_genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_compare
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_genome_one
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_genome_two
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/refgenie:0.10.0--py_0
cwlVersion: v1.1
baseCommand:
- refgenie
- compare
- GENOME2
