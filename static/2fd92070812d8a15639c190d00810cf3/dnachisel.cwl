class: CommandLineTool
id: dnachisel.cwl
inputs:
- id: in_circular
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --circular
- id: in_source
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_target
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
  dockerPull: quay.io/biocontainers/dnachisel:3.2.6--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- dnachisel
