class: CommandLineTool
id: mykrobe_panels_panels.cwl
inputs:
- id: in_d
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_q
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_my_k_robe
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_panels
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mykrobe:0.9.0--py36hd181a71_2
cwlVersion: v1.1
baseCommand:
- mykrobe
- panels
- panels
