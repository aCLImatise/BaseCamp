class: CommandLineTool
id: align_collect.py.cwl
inputs:
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_collect
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_info
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_multiple
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_stats
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mikado:2.2.2--py37hfa133b6_0
cwlVersion: v1.1
baseCommand:
- align_collect.py
