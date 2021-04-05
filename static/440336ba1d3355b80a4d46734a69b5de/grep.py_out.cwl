class: CommandLineTool
id: grep.py_out.cwl
inputs:
- id: in_q
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -s
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_grep_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ids
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_target
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out
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
  dockerPull: quay.io/biocontainers/mikado:2.2.3--py38h6ed170a_0
cwlVersion: v1.1
baseCommand:
- grep.py
- out
