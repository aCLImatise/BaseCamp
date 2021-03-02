class: CommandLineTool
id: correct_links.cwl
inputs:
- id: in_l
  doc: ''
  type: string?
  inputBinding:
    prefix: -l
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
- id: in_mis_asm
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
  dockerPull: quay.io/biocontainers/salsa2:2.2--py27h78a066a_0
cwlVersion: v1.1
baseCommand:
- correct_links
