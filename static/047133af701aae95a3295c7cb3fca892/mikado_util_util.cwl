class: CommandLineTool
id: mikado_util_util.cwl
inputs:
- id: in_mikado
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_util
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
  dockerPull: quay.io/biocontainers/mikado:2.2.4--py38h803c66d_0
cwlVersion: v1.1
baseCommand:
- mikado
- util
- util
