class: CommandLineTool
id: planemo_open.cwl
inputs:
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/planemo:0.74.2--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- open
